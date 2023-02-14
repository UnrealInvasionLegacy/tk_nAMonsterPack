class PlasmaQueenProjFX extends Emitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter14
         UseColorScale=True
         UniformSize=True
         AutomaticInitialSpawning=False
         ColorScale(0)=(Color=(B=255,G=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=255,G=255,A=255))
         CoordinateSystem=PTCS_Relative
         MaxParticles=1
         StartSizeRange=(X=(Min=25.000000,Max=25.000000))
         InitialParticlesPerSecond=1000.000000
         Texture=Texture'XEffectMat.Shock.shock_core'
         LifetimeRange=(Min=2.000000,Max=2.000000)
     End Object
     Emitters(0)=SpriteEmitter'tk_nAMonsterPack.PlasmaQueenProjFX.SpriteEmitter14'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter15
         UseColorScale=True
         FadeOut=True
         FadeIn=True
         SpinParticles=True
         UniformSize=True
         AutomaticInitialSpawning=False
         ColorScale(0)=(Color=(B=128))
         ColorScale(1)=(RelativeTime=4.000000,Color=(B=128))
         FadeOutStartTime=1.000000
         FadeInEndTime=1.000000
         CoordinateSystem=PTCS_Relative
         MaxParticles=2
         SpinsPerSecondRange=(X=(Min=-0.100000,Max=0.100000))
         StartSpinRange=(X=(Min=-25.000000,Max=25.000000))
         StartSizeRange=(X=(Min=25.000000,Max=25.000000))
         InitialParticlesPerSecond=1.000000
         Texture=Texture'XEffectMat.Shock.shock_flare_a'
         LifetimeRange=(Min=2.000000,Max=2.000000)
     End Object
     Emitters(1)=SpriteEmitter'tk_nAMonsterPack.PlasmaQueenProjFX.SpriteEmitter15'

     bNoDelete=False
     LifeSpan=8.000000
}
