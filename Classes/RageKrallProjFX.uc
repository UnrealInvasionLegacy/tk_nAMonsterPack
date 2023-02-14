class RageKrallProjFX extends Emitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter1
         UseDirectionAs=PTDU_Right
         UseColorScale=True
         FadeOut=True
         FadeIn=True
         AlphaTest=False
         UniformSize=True
         ColorScale(0)=(Color=(G=255,R=255,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(G=255,A=255))
         FadeOutStartTime=0.480000
         FadeInEndTime=0.480000
         CoordinateSystem=PTCS_Relative
         StartLocationRange=(X=(Min=5.000000,Max=5.000000))
         AlphaRef=-93695853
         StartSizeRange=(X=(Min=40.500000,Max=40.500000),Y=(Min=40.500000,Max=40.500000),Z=(Min=40.500000,Max=40.500000))
         DrawStyle=PTDS_Brighten
         Texture=Texture'AW-2004Particles.Weapons.PlasmaHeadRed'
         StartVelocityRange=(X=(Min=-5.000000,Max=-5.000000))
     End Object
     Emitters(0)=SpriteEmitter'tk_nAMonsterPack.RageKrallProjFX.SpriteEmitter1'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter2
         UseDirectionAs=PTDU_Forward
         UseColorScale=True
         FadeOut=True
         FadeIn=True
         UseRegularSizeScale=False
         UniformSize=True
         Acceleration=(X=-4.000000)
         ColorScale(0)=(Color=(G=50,R=255,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(G=255,R=255,A=255))
         FadeOutStartTime=3.600000
         FadeInEndTime=0.720000
         CoordinateSystem=PTCS_Relative
         MaxParticles=25
         StartLocationOffset=(X=10.000000)
         SizeScaleRepeats=6.000000
         StartSizeRange=(X=(Min=6.884000,Max=6.884000),Y=(Min=6.884000,Max=6.884000),Z=(Min=6.884000,Max=6.884000))
         InitialParticlesPerSecond=5.000000
         Texture=Texture'XEffectMat.Ion.ion_ring'
         StartVelocityRange=(X=(Min=-3.000000,Max=-3.000000))
     End Object
     Emitters(1)=SpriteEmitter'tk_nAMonsterPack.RageKrallProjFX.SpriteEmitter2'

     bNoDelete=False
     LifeSpan=8.000000
}
