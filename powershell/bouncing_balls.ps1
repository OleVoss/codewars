function Get-bounding-ball
{
    [OutputType([int])]
    Param (

        [double]$h,
        [double]$bounce,
        [double]$window)

    # your code

    Process {
        # validation
        if ($h -le 0) {
            return -1
        }
        if ($bounce -le 0 -or $bounce -ge 1) {
            return -1
        }
        if ($window -ge $h) {
            return -1
        }

        $bounces = 0
        while (1) {
            $bounces += 1
            $h *= $bounce
            if($h -gt $window) {
                $bounces += 1
            } else {
                break
            }
        }

        return $bounces
    }
}