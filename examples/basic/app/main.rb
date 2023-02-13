require 'app/crunch.rb'

def tick args
  args.state.atlas = crunch_load(args, 'sprites/atlas.json') if args.state.tick_count == 0
  atlas = args.state.atlas
  args.outputs.sprites << {
    path: 'sprites/atlas0.png',
    x: 200,
    y: 200,
    w: atlas.platform.source_w * 4,
    h: atlas.platform.source_h * 4,
    source_x: atlas.platform.source_x,
    source_y: atlas.platform.source_y,
    source_w: atlas.platform.source_w,
    source_h: atlas.platform.source_h,
  }
end
