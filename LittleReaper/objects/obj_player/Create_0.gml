
depth  = -50
hsp = 0
hMax = 6
walkSpeed = 2
runSpeed = .5
runMax = 6

vsp = 0
vMax = 30
jumpSpeed = 17
jumping = 0
jumped = 0
grav = 1.5
float = 1.5
floatStart = 1.5
fric = .75
onGround = 0
hitLeft = 0
hitRight = 0
hitUp = 0
hit = 0
immune = 0
hitTime = 30
immuneTime = 90
dead = 0
maxHp = 8
hp = maxHp

keyLeft = ord("A")
keyRight = ord("D")
keySprint = vk_shift
keyJump = vk_space

global.useController = 0

scythe = instance_create_depth(x,y,depth-1,obj_scythe)
scythe.player = id