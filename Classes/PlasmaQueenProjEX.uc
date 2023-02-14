class PlasmaQueenProjEX extends Emitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter14
         UseColorScale=True
         FadeOut=True
         FadeIn=True
         RespawnDeadParticles=False
         UseSizeScale=True
         UseRegularSizeScale=False
         UniformSize=True
         AutomaticInitialSpawning=False
         ColorScale(0)=(Color=(B=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=128))
         FadeOutStartTime=0.100000
         FadeInEndTime=0.100000
         MaxParticles=1
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=1.000000)
         InitialParticlesPerSecond=2000.000000
         Texture=Texture'XEffectMat.Shock.shock_ring_b'
         LifetimeRange=(Min=0.500000,Max=0.500000)
     End Object
     Emitters(0)=SpriteEmitter'tk_nAMonsterPack.PlasmaQueenProjEX.SpriteEmitter14'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter15
         UseColorScale=True
         FadeOut=True
         FadeIn=True
         RespawnDeadParticles=False
         UseSizeScale=True
         UseRegularSizeScale=False
         UniformSize=True
         ColorScale(0)=(Color=(B=64))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=128))
         FadeOutStartTime=0.100000
         FadeInEndTime=0.100000
         MaxParticles=1
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=1.000000)
         StartSizeRange=(X=(Min=50.000000,Max=50.000000))
         Texture=Texture'XEffectMat.Shock.shock_core'
         LifetimeRange=(Min=0.500000,Max=0.500000)
     End Object
     Emitters(1)=SpriteEmitter'tk_nAMonsterPack.PlasmaQueenProjEX.SpriteEmitter15'

     Begin Object Class=MeshEmitter Name=MeshEmitter0
         StaticMesh=StaticMesh'AW-2004Particles.Weapons.PlasmaSphere'
         UseParticleColor=True
         UseColorScale=True
         FadeOut=True
         FadeIn=True
         RespawnDeadParticles=False
         UseSizeScale=True
         UseRegularSizeScale=False
         AutomaticInitialSpawning=False
         ColorScale(0)=(Color=(B=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=64))
         FadeOutStartTime=1.000000
         FadeInEndTime=0.100000
         MaxParticles=1
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=1.000000)
         SizeScale(2)=(RelativeTime=2.000000,RelativeSize=2.000000)
         InitialParticlesPerSecond=2000.000000
         LifetimeRange=(Min=2.000000,Max=2.000000)
     End Object
     Emitters(2)=MeshEmitter'tk_nAMonsterPack.PlasmaQueenProjEX.MeshEmitter0'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter16
         UseColorScale=True
         FadeOut=True
         FadeIn=True
         RespawnDeadParticles=False
         UseSizeScale=True
         UseRegularSizeScale=False
         UniformSize=True
         AutomaticInitialSpawning=False
         ColorScale(0)=(Color=(B=128))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255))
         FadeOutStartTime=1.000000
         FadeInEndTime=0.100000
         MaxParticles=1
         SizeScale(1)=(RelativeTime=0.100000,RelativeSize=2.000000)
         SizeScale(2)=(RelativeTime=3.000000,RelativeSize=3.000000)
         StartSizeRange=(X=(Min=50.000000,Max=50.000000))
         InitialParticlesPerSecond=2000.000000
         Texture=Texture'XEffectMat.Shock.ShockComboFlash'
         LifetimeRange=(Min=3.000000,Max=3.000000)
     End Object
     Emitters(3)=SpriteEmitter'tk_nAMonsterPack.PlasmaQueenProjEX.SpriteEmitter16'

     bNoDelete=False
     LifeSpan=8.000000
}
