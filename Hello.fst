module Hello

open Pulse.Lib.Pervasives

```pulse
fn test (x:unit)
  requires emp
  ensures emp
{
  ()
}
```

// CTRL <.> advances proof to cursor
// CTRL <;> rewinds FStar to start of file

```pulse
fn incr (x:ref int)
  requires pts_to x 'i ** pts_to x 'i
  ensures pts_to x ('i + 1) ** pts_to x 'i
{
    let v = !x;
    x := v + 2;
    let y = !x;
    x := y - 1;
}
```
