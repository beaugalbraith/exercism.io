package clock
import (
	"fmt"
)
const testVersion = 4
type Clock struct {
	hours int
	minutes int
}
func New(hour, minute int) Clock {
	c := Clock {
		hours: hour,
		minutes: minute,
	}
	c = c.parse()
	return c
}

func (c Clock) String() string {
	return fmt.Sprintf("%02d:%02d", c.hours, c.minutes)
}

func (c Clock) Add(minutes int) Clock {
	c.minutes += minutes
	c = c.parse()
	return c
	
}
func (c Clock) parse() Clock {
	c.hours += int(c.minutes / 60)
	hours := (c.hours % 24); 
	if hours < 0 { hours += 24 }
	minutes := (c.minutes % 60)
	return Clock {
		hours: hours,
		minutes: minutes,
	}
}
