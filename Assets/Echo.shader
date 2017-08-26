// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1,x:35963,y:32712,varname:node_1,prsc:2|diff-2301-OUT,emission-2298-OUT;n:type:ShaderForge.SFN_Vector4Property,id:2,x:33270,y:32884,ptovrint:False,ptlb:Origin,ptin:_Origin,varname:node_4631,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_FragmentPosition,id:3,x:33267,y:32734,varname:node_3,prsc:2;n:type:ShaderForge.SFN_Distance,id:4,x:33511,y:32735,varname:node_4,prsc:2|A-3-XYZ,B-2-XYZ;n:type:ShaderForge.SFN_ValueProperty,id:5,x:33511,y:33048,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_4690,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Subtract,id:6,x:33511,y:32879,varname:node_6,prsc:2|A-2292-OUT,B-2-W;n:type:ShaderForge.SFN_Multiply,id:8,x:33704,y:32941,varname:node_8,prsc:2|A-6-OUT,B-5-OUT;n:type:ShaderForge.SFN_Abs,id:9,x:34089,y:32811,varname:node_9,prsc:2|IN-10-OUT;n:type:ShaderForge.SFN_Subtract,id:10,x:33904,y:32811,varname:node_10,prsc:2|A-4-OUT,B-8-OUT;n:type:ShaderForge.SFN_ValueProperty,id:12,x:35073,y:33083,ptovrint:False,ptlb:Power,ptin:_Power,varname:node_8195,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:2292,x:33239,y:33169,ptovrint:False,ptlb:Current Time,ptin:_CurrentTime,varname:node_1495,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:2294,x:33937,y:33202,ptovrint:False,ptlb:Duration,ptin:_Duration,varname:node_5117,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Divide,id:2296,x:34146,y:33135,varname:node_2296,prsc:2|A-6-OUT,B-2294-OUT;n:type:ShaderForge.SFN_Lerp,id:2298,x:35554,y:32814,varname:node_2298,prsc:2|A-2314-OUT,B-2299-OUT,T-2312-OUT;n:type:ShaderForge.SFN_Vector1,id:2299,x:35329,y:32914,varname:node_2299,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:2301,x:35466,y:32604,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_5928,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:2304,x:34993,y:32729,varname:node_2304,prsc:2|A-2305-OUT,B-2306-OUT,T-2318-OUT;n:type:ShaderForge.SFN_Vector1,id:2305,x:34594,y:32666,varname:node_2305,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:2306,x:34594,y:32747,varname:node_2306,prsc:2,v1:0;n:type:ShaderForge.SFN_Power,id:2312,x:35329,y:32969,varname:node_2312,prsc:2|VAL-2296-OUT,EXP-12-OUT;n:type:ShaderForge.SFN_Clamp01,id:2314,x:35229,y:32762,varname:node_2314,prsc:2|IN-2304-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2317,x:34089,y:32977,ptovrint:False,ptlb:Breadth,ptin:_Breadth,varname:node_7258,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:2318,x:34294,y:32856,varname:node_2318,prsc:2|A-9-OUT,B-2317-OUT;proporder:2-5-2292-2294-2301-2317-12;pass:END;sub:END;*/

Shader "Custom/Echo" {
    Properties {
        _Origin ("Origin", Vector) = (0,0,0,0)
        _Speed ("Speed", Float ) = 1
        _CurrentTime ("Current Time", Float ) = 0
        _Duration ("Duration", Float ) = 0
        _Diffuse ("Diffuse", Float ) = 1
        _Breadth ("Breadth", Float ) = 1
        _Power ("Power", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Origin;
            uniform float _Speed;
            uniform float _Power;
            uniform float _CurrentTime;
            uniform float _Duration;
            uniform float _Diffuse;
            uniform float _Breadth;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = float3(_Diffuse,_Diffuse,_Diffuse);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float node_6 = (_CurrentTime-_Origin.a);
                float node_2298 = lerp(saturate(lerp(1.0,0.0,(abs((distance(i.posWorld.rgb,_Origin.rgb)-(node_6*_Speed)))*_Breadth))),0.0,pow((node_6/_Duration),_Power));
                float3 emissive = float3(node_2298,node_2298,node_2298);
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Origin;
            uniform float _Speed;
            uniform float _Power;
            uniform float _CurrentTime;
            uniform float _Duration;
            uniform float _Diffuse;
            uniform float _Breadth;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = float3(_Diffuse,_Diffuse,_Diffuse);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
