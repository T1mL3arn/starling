// =================================================================================================
//
//	Starling Framework
//	Copyright Gamua GmbH. All Rights Reserved.
//
//	This program is free software. You can redistribute and/or modify it
//	in accordance with the terms of the accompanying license agreement.
//
// =================================================================================================

package starling.utils;
import starling.events.Event;
import starling.events.EventDispatcher;

/** Dispatched when any property of the instance changes. */
#if 0
[Event(name="change", type="starling.events.Event")]
#end

/** The padding class stores one number for each of four directions,
 *  thus describing the padding around a 2D object. */
class Padding extends EventDispatcher
{
    private var _left:Float;
    private var _right:Float;
    private var _top:Float;
    private var _bottom:Float;

    /** Creates a new instance with the given properties. */
    public function new(left:Float=0, right:Float=0, top:Float=0, bottom:Float=0)
    {
        super();
        setTo(left, right, top, bottom);
    }

    /** Sets all four values at once. */
    public function setTo(left:Float=0, right:Float=0, top:Float=0, bottom:Float=0):Void
    {
        var changed:Bool = _left != left || _right != right || _top != top || _bottom != bottom;

        _left = left;
        _right = right;
        _top = top;
        _bottom = bottom;

        if (changed) dispatchEventWith(Event.CHANGE);
    }

    /** Copies all properties from another Padding instance.
     *  Pass <code>null</code> to reset all values to zero. */
    public function copyFrom(padding:Padding):Void
    {
        if (padding == null) setTo(0, 0, 0, 0);
        else setTo(padding._left, padding._right, padding._top, padding._bottom);
    }

    /** Creates a new instance with the exact same values. */
    public function clone():Padding
    {
        return new Padding(_left, _right, _top, _bottom);
    }

    /** The padding on the left side. */
    public var left(get, set):Float;
    @:noCompletion private function get_left():Float { return _left; }
    @:noCompletion private function set_left(value:Float):Float
    {
        if (_left != value)
        {
            _left = value;
            dispatchEventWith(Event.CHANGE);
        }
        return value;
    }

    /** The padding on the right side. */
    public var right(get, set):Float;
    @:noCompletion private function get_right():Float { return _right; }
    @:noCompletion private function set_right(value:Float):Float
    {
        if (_right != value)
        {
            _right = value;
            dispatchEventWith(Event.CHANGE);
        }
        return value;
    }

    /** The padding towards the top. */
    public var top(get, set):Float;
    @:noCompletion private function get_top():Float { return _top; }
    @:noCompletion private function set_top(value:Float):Float
    {
        if (_top != value)
        {
            _top = value;
            dispatchEventWith(Event.CHANGE);
        }
        return value;
    }

    /** The padding towards the bottom. */
    public var bottom(get, set):Float;
    @:noCompletion private function get_bottom():Float { return _bottom; }
    @:noCompletion private function set_bottom(value:Float):Float
    {
        if (_bottom != value)
        {
            _bottom = value;
            dispatchEventWith(Event.CHANGE);
        }
        return value;
    }
}
