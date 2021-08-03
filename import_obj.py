import bpy, sys

objfile = sys.argv[-1].replace('./', '')

# create empty scene
bpy.ops.object.select_all(action='SELECT')
bpy.ops.object.delete() 

# import given file
bpy.ops.import_scene.obj(filepath=objfile, filter_glob="*.obj;*.mtl",
use_edges=True, use_smooth_groups=True, use_split_objects=True, use_split_groups=True,
use_groups_as_vgroups=False, use_image_search=True, split_mode='ON',
global_clamp_size=0, axis_forward='-Z', axis_up='Y')

## for FBX files
# bpy.ops.import_scene.fbx(filepath=sys.argv[-1])

bpy.ops.wm.save_as_mainfile(filepath=objfile.replace('.obj', '.blend'))

bpy.ops.wm.quit_blender()