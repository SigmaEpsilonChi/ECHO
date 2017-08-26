using UnityEngine;
using System.Collections;

public class Echo : MonoBehaviour {
	public bool rift = false;
	public GameObject camObject;
	public GameObject forwardObject;
	public GameObject geometry;
	public Vector4 origin;
	public float lastBeat;
	public float duration;
	public float delay;
	public float speed;
	public float power;
	public AudioClip heartbeat;
	public AudioSource heartbeatAudio;
	public GameObject human;
	public Transform[] humanPositions;
	public Transform playerEnd;
	public AudioClip[] footSteps;
	public AudioClip[] shuffles;
	public Vector3 lastStep;
	public Transform lightSwitch;
	public Light switchLight;
	public Renderer switchLightHousing;
	public Material redDiffuse;
	public AudioClip switchSoundOn;
	public AudioClip switchSoundOff;
	public bool switchState = false;
	public Material response;
	public Material responseDark;
	public Material white;
	public Collider endTrigger;
	public Light endLight;
	public Renderer endDoor;
	public float endTime;
	public Quaternion endRotation;
	public float endRotationY;
	public Vector3 endPosition;
	private bool limitLook = false;
	private int endBeats = 0;
	private bool ended = false;

	// Use this for initialization
	void Start () {
		Cursor.visible = false;
	}
	
	// Update is called once per frame
	void Update () {
		int i;
		Renderer[] responders = geometry.GetComponentsInChildren<Renderer>();
		for (i = 0; i < responders.Length; i++) {
			responders[i].material.SetFloat("_CurrentTime", Time.time);
			responders[i].material.SetFloat("_Duration", duration);
			responders[i].material.SetFloat("_Power", power);
			responders[i].material.SetVector("_Origin", origin);
		}
//		if (Input.GetKeyDown("space")) {
		if (Time.time-lastBeat >= duration+delay && endBeats < 3) {
			heartbeatAudio.PlayOneShot(heartbeat);
			heartbeatAudio.transform.position = camObject.transform.position;
//			emitter.Emit(emission);
			lastBeat = Time.time;
			origin = camObject.transform.position;
			origin.w = Time.time;
			if (endTime != 0 && Time.time-endTime > 3) {
			//	float y = camObject.transform.rotation.eulerAngles.y;
				//duration = Mathf.Lerp(duration, 0.5f, 0.25f);
				//delay = Mathf.Lerp(delay, 0.25f, 0.2f);
				//delay -= 0.3f;
				//duration -= 0.3f;
				if (endBeats < 3) {
					human.transform.position = humanPositions[endBeats].position;
//					human.transform.position = Vector3.Lerp(human.transform.position, humanEnd.position, 0.5f);
					endBeats += 1;
					human.GetComponent<AudioSource>().PlayOneShot(shuffles[endBeats%shuffles.Length]);
				}
			}
		}
		else if (Time.time-lastBeat >= duration+delay && !ended) {
			heartbeatAudio.PlayOneShot(heartbeat);
			ended = true;
		}
		if ((endTrigger.bounds.Contains(transform.position) && endTime == 0) && Time.time-lastBeat > 1) {
			endTime = Time.time;
			human.active = true;
			endPosition = camObject.transform.position;
			if (rift) {
				////////camObject.GetComponent<OVRCameraController>().GetYRotation(ref endRotationY);
				////////GetComponent<OVRPlayerController>().enabled = false;
				//foreach (OVRCamera subCamera in camObject.GetComponentsInChildren<OVRCamera>()) {
					//subCamera.enabled = false;
				//}
			}
			else {
				endRotation = camObject.transform.rotation;
				GetComponent<CharacterMotor>().enabled = false;
				GetComponent<MouseLook>().enabled = false;
			}
			lightSwitch.GetComponent<AudioSource>().PlayOneShot(switchSoundOff);
			endLight.enabled = false;
			endDoor.material = response;
		}
		if (endTime != 0) {
			//	float y = camObject.transform.rotation.eulerAngles.y;
			if (rift) {
				//forwardObject.transform.rotation = Quaternion.Slerp(endRotation, Quaternion.Euler(0, -90, 0), Mathf.SmoothStep(0, 1, Mathf.Clamp01((Time.time-endTime)/3)));
				////////camObject.GetComponent<OVRCameraController>().SetYRotation(Mathf.LerpAngle(endRotationY, -90, Mathf.SmoothStep(0, 1, Mathf.Clamp01((Time.time-endTime)/3))));
			}
			else {
				camObject.transform.rotation = Quaternion.Slerp(endRotation, Quaternion.Euler(0, -90, 0), Mathf.SmoothStep(0, 1, Mathf.Clamp01((Time.time-endTime)/3)));
			}
			camObject.transform.position = Vector3.Lerp(endPosition, playerEnd.position, Mathf.SmoothStep(0, 1, Mathf.Clamp01((Time.time-endTime)/3)));
		}
		if (!switchState && (lightSwitch.GetComponent<Collider>().bounds.Contains(transform.position))) {// && Input.GetKeyDown("space"))) {
			endLight.enabled = true;
			endDoor.material = white;
			lightSwitch.transform.localRotation = Quaternion.Euler(-30, 0, 0);
			lightSwitch.GetComponent<AudioSource>().PlayOneShot(switchSoundOn);
			switchLightHousing.material = redDiffuse;
			switchState = true;
			switchLight.gameObject.active = false;
		}
		if ((new Vector2(lastStep.x, lastStep.z)-new Vector2(camObject.transform.position.x, camObject.transform.position.z)).magnitude > 1.5f) {
			GetComponent<AudioSource>().PlayOneShot(footSteps[Random.Range(0, footSteps.Length)]);
			GetComponent<AudioSource>().pitch = 1+(Random.value*2-1)/8;
			lastStep = camObject.transform.position;
		}
	}

	void OnGUI () {
		if (ended) {
			GUIStyle endStyle = new GUIStyle();
			endStyle.alignment = TextAnchor.MiddleCenter;
			endStyle.normal.textColor = Color.white;
			endStyle.fontSize = Screen.height/4;
			GUI.Label(new Rect(0, 0, Screen.width, Screen.height), "ECHO", endStyle);
		}
	}
}