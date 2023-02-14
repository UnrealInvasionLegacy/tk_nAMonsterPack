class WOGBruteProjFX extends Emitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter3
         UseDirectionAs=PTDU_Right
         ProjectionNormal=(X=6.000000,Z=0.000000)
         UseColorScale=True
         FadeOut=True
         UniformSize=True
         Acceleration=(X=-9.000000)
         ColorScale(0)=(Color=(R=255,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(G=255,A=255))
         CoordinateSystem=PTCS_Relative
         MaxParticles=50
         UseRotationFrom=PTRS_Offset
         RotationOffset=(Pitch=100,Yaw=100,Roll=100)
         SpinCCWorCW=(X=1.000000)
         SpinsPerSecondRange=(X=(Min=1.663000,Max=1.663000))
         StartSpinRange=(X=(Min=1.000000,Max=1.000000))
         StartSizeRange=(X=(Min=25.042000,Max=25.042000),Y=(Min=25.042000,Max=25.042000),Z=(Min=9.570000,Max=9.570000))
         InitialParticlesPerSecond=7.200000
         DrawStyle=PTDS_Brighten
         Texture=Texture'VMParticleTextures.LeviathanParticleEffects.LeviathanMGUNFlare'
         MinSquaredVelocity=-1.000000
         LifetimeRange=(Min=3.040000,Max=3.040000)
         StartVelocityRange=(X=(Min=-90.000000,Max=-90.000000))
         StartVelocityRadialRange=(Max=100.000000)
     End Object
     Emitters(0)=SpriteEmitter'tk_nAMonsterPack.WOGBruteProjFX.SpriteEmitter3'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter4
         UseDirectionAs=PTDU_Forward
         UseColorScale=True
         FadeOut=True
         FadeIn=True
         UseRegularSizeScale=False
         UniformSize=True
         Acceleration=(X=-8.000000)
         ColorScale(0)=(Color=(G=50,R=255,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(G=255,R=255,A=255))
         FadeOutStartTime=3.600000
         FadeInEndTime=0.720000
         CoordinateSystem=PTCS_Relative
         MaxParticles=25
         StartLocationOffset=(X=15.000000)
         SizeScaleRepeats=6.000000
         StartSizeRange=(X=(Min=6.884000,Max=6.884000),Y=(Min=6.884000,Max=6.884000),Z=(Min=6.884000,Max=6.884000))
         InitialParticlesPerSecond=5.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'XEffectMat.Ion.ion_ring'
         StartVelocityRange=(X=(Min=-10.000000,Max=-10.000000))
     End Object
     Emitters(1)=SpriteEmitter'tk_nAMonsterPack.WOGBruteProjFX.SpriteEmitter4'

     Begin Object Class=MeshEmitter Name=MeshEmitter1
         StaticMesh=StaticMesh'WeaponStaticMesh.RocketProj'
         UseMeshBlendMode=False
         UseParticleColor=True
         ColorScale(0)=(Color=(B=51,G=102,R=204,A=51))
         CoordinateSystem=PTCS_Relative
         DetailMode=DM_SuperHigh
         StartLocationRange=(X=(Min=30.000000,Max=30.000000))
         StartLocationShape=PTLS_All
         MeshNormal=(X=10.000000,Y=10.000000,Z=10.000000)
         DrawStyle=PTDS_Regular
     End Object
     Emitters(2)=MeshEmitter'tk_nAMonsterPack.WOGBruteProjFX.MeshEmitter1'

     bNoDelete=False
     LifeSpan=8.000000
}
