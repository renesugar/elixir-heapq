defmodule HeapQueueTest do
  use ExUnit.Case

  test "suite" do
    q = HeapQueue.new()
    assert HeapQueue.queue?(q)
    assert 0 == HeapQueue.size(q)
    q = q
      |> HeapQueue.push(20, 200)
      |> HeapQueue.push(19, 190)
      |> HeapQueue.push(18, 180)
      |> HeapQueue.push(17, 170)
      |> HeapQueue.push(16, 160)
      |> HeapQueue.push(15, 150)
      |> HeapQueue.push(14, 140)
      |> HeapQueue.push(13, 130)
      |> HeapQueue.push(12, 120)
      |> HeapQueue.push(11, 110)
      |> HeapQueue.push(10, 100)
      |> HeapQueue.push(9, 90)
      |> HeapQueue.push(8, 80)
      |> HeapQueue.push(7, 70)
      |> HeapQueue.push(6, 60)
      |> HeapQueue.push(5, 50)
      |> HeapQueue.push(4, 40)
      |> HeapQueue.push(3, 30)
      |> HeapQueue.push(2, 20)
      |> HeapQueue.push(1, 10)
      |> HeapQueue.push(0, 0)
      |> HeapQueue.push(-1, -10)
      |> HeapQueue.push(-2, -20)
      |> HeapQueue.push(-3, -30)
      |> HeapQueue.push(-4, -40)
      |> HeapQueue.push(-5, -50)
      |> HeapQueue.push(-6, -60)
      |> HeapQueue.push(-7, -70)
      |> HeapQueue.push(-8, -80)
      |> HeapQueue.push(-9, -90)
      |> HeapQueue.push(-10, -100)
      |> HeapQueue.push(-11, -110)
      |> HeapQueue.push(-12, -120)
      |> HeapQueue.push(-13, -130)
      |> HeapQueue.push(-14, -140)
      |> HeapQueue.push(-15, -150)
      |> HeapQueue.push(-16, -160)
      |> HeapQueue.push(-17, -170)
      |> HeapQueue.push(-18, -180)
      |> HeapQueue.push(-19, -190)
      |> HeapQueue.push(-20, -200)
      |> HeapQueue.push(-20, -201)
      |> HeapQueue.push(-19, -191)
      |> HeapQueue.push(-18, -181)
      |> HeapQueue.push(-17, -171)
      |> HeapQueue.push(-16, -161)
      |> HeapQueue.push(-15, -151)
      |> HeapQueue.push(-14, -141)
      |> HeapQueue.push(-13, -131)
      |> HeapQueue.push(-12, -121)
      |> HeapQueue.push(-11, -111)
      |> HeapQueue.push(-10, -101)
      |> HeapQueue.push(-9, -91)
      |> HeapQueue.push(-8, -81)
      |> HeapQueue.push(-7, -71)
      |> HeapQueue.push(-6, -61)
      |> HeapQueue.push(-5, -51)
      |> HeapQueue.push(-4, -41)
      |> HeapQueue.push(-3, -31)
      |> HeapQueue.push(-2, -21)
      |> HeapQueue.push(-1, -11)
      |> HeapQueue.push(0, -1)
      |> HeapQueue.push(1, 11)
      |> HeapQueue.push(2, 21)
      |> HeapQueue.push(3, 31)
      |> HeapQueue.push(4, 41)
      |> HeapQueue.push(5, 51)
      |> HeapQueue.push(6, 61)
      |> HeapQueue.push(7, 71)
      |> HeapQueue.push(8, 81)
      |> HeapQueue.push(9, 91)
      |> HeapQueue.push(10, 101)
      |> HeapQueue.push(11, 111)
      |> HeapQueue.push(12, 121)
      |> HeapQueue.push(13, 131)
      |> HeapQueue.push(14, 141)
      |> HeapQueue.push(15, 151)
      |> HeapQueue.push(16, 161)
      |> HeapQueue.push(17, 171)
      |> HeapQueue.push(18, 181)
      |> HeapQueue.push(19, 191)
      |> HeapQueue.push(20, 201)

    assert HeapQueue.queue?(q)
    assert 82 = HeapQueue.size(q)
    assert [-200, -201, -190, -191, -180, -181, -170, -171, -160, -161,
            -150, -151, -140, -141, -130, -131, -120, -121, -110, -111,
            -100, -101, -90, -91, -80, -81, -70, -71, -60, -61,
            -50, -51, -40, -41, -30, -31, -20, -21, -10, -11,
            0, -1, 10, 11, 20, 21, 30, 31, 40, 41,
            50, 51, 60, 61, 70, 71, 80, 81, 90, 91,
            100, 101, 110, 111, 120, 121, 130, 131, 140, 141,
            150, 151, 160, 161, 170, 171, 180, 181, 190, 191,
            200, 201] = HeapQueue.to_list_of_values(q)
    assert [{-20, -200}, {-20, -201}, {-19, -190}, {-19, -191}, {-18, -180},
            {-18, -181}, {-17, -170}, {-17, -171}, {-16, -160}, {-16, -161},
            {-15, -150}, {-15, -151}, {-14, -140}, {-14, -141}, {-13, -130},
            {-13, -131}, {-12, -120}, {-12, -121}, {-11, -110}, {-11, -111},
            {-10, -100}, {-10, -101}, {-9, -90}, {-9, -91}, {-8, -80},
            {-8, -81}, {-7, -70}, {-7, -71}, {-6, -60}, {-6, -61},
            {-5, -50}, {-5, -51}, {-4, -40}, {-4, -41}, {-3, -30},
            {-3, -31}, {-2, -20}, {-2, -21}, {-1, -10}, {-1, -11},
            {0, 0}, {0, -1}, {1, 10}, {1, 11}, {2, 20},
            {2, 21}, {3, 30}, {3, 31}, {4, 40}, {4, 41},
            {5, 50}, {5, 51}, {6, 60}, {6, 61}, {7, 70},
            {7, 71}, {8, 80}, {8, 81}, {9, 90}, {9, 91},
            {10, 100}, {10, 101}, {11, 110}, {11, 111}, {12, 120},
            {12, 121}, {13, 130}, {13, 131}, {14, 140}, {14, 141},
            {15, 150}, {15, 151}, {16, 160}, {16, 161}, {17, 170},
            {17, 171}, {18, 180}, {18, 181}, {19, 190}, {19, 191},
            {20, 200}, {20, 201}] = HeapQueue.to_list(q)

    {{:value, -200}, q} = HeapQueue.pop_value(q)
    {{:value, -20, -201}, q} = HeapQueue.pop(q)
    {{:value, -190}, q} = HeapQueue.pop_value(q)
    {{:value, -19, -191}, q} = HeapQueue.pop(q)
    {{:value, -180}, q} = HeapQueue.pop_value(q)
    {{:value, -18, -181}, q} = HeapQueue.pop(q)
    {{:value, -170}, q} = HeapQueue.pop_value(q)
    {{:value, -17, -171}, q} = HeapQueue.pop(q)
    {{:value, -160}, q} = HeapQueue.pop_value(q)
    {{:value, -16, -161}, q} = HeapQueue.pop(q)
    {{:value, -150}, q} = HeapQueue.pop_value(q)
    {{:value, -15, -151}, q} = HeapQueue.pop(q)
    {{:value, -140}, q} = HeapQueue.pop_value(q)
    {{:value, -14, -141}, q} = HeapQueue.pop(q)
    {{:value, -130}, q} = HeapQueue.pop_value(q)
    {{:value, -13, -131}, q} = HeapQueue.pop(q)
    {{:value, -120}, q} = HeapQueue.pop_value(q)
    {{:value, -12, -121}, q} = HeapQueue.pop(q)
    {{:value, -110}, q} = HeapQueue.pop_value(q)
    {{:value, -11, -111}, q} = HeapQueue.pop(q)
    {{:value, -100}, q} = HeapQueue.pop_value(q)
    {{:value, -10, -101}, q} = HeapQueue.pop(q)
    {{:value, -90}, q} = HeapQueue.pop_value(q)
    {{:value, -9, -91}, q} = HeapQueue.pop(q)
    {{:value, -80}, q} = HeapQueue.pop_value(q)
    {{:value, -8, -81}, q} = HeapQueue.pop(q)
    {{:value, -70}, q} = HeapQueue.pop_value(q)
    {{:value, -7, -71}, q} = HeapQueue.pop(q)
    {{:value, -60}, q} = HeapQueue.pop_value(q)
    {{:value, -6, -61}, q} = HeapQueue.pop(q)
    {{:value, -50}, q} = HeapQueue.pop_value(q)
    {{:value, -5, -51}, q} = HeapQueue.pop(q)
    {{:value, -40}, q} = HeapQueue.pop_value(q)
    {{:value, -4, -41}, q} = HeapQueue.pop(q)
    {{:value, -30}, q} = HeapQueue.pop_value(q)
    {{:value, -3, -31}, q} = HeapQueue.pop(q)
    {{:value, -20}, q} = HeapQueue.pop_value(q)
    {{:value, -2, -21}, q} = HeapQueue.pop(q)
    {{:value, -10}, q} = HeapQueue.pop_value(q)
    {{:value, -1, -11}, q} = HeapQueue.pop(q)
    {{:value, 0}, q} = HeapQueue.pop_value(q)
    {{:value, 0, -1}, q} = HeapQueue.pop(q)
    {{:value, 10}, q} = HeapQueue.pop_value(q)
    {{:value, 1, 11}, q} = HeapQueue.pop(q)
    {{:value, 20}, q} = HeapQueue.pop_value(q)
    {{:value, 2, 21}, q} = HeapQueue.pop(q)
    {{:value, 30}, q} = HeapQueue.pop_value(q)
    {{:value, 3, 31}, q} = HeapQueue.pop(q)
    {{:value, 40}, q} = HeapQueue.pop_value(q)
    {{:value, 4, 41}, q} = HeapQueue.pop(q)
    {{:value, 50}, q} = HeapQueue.pop_value(q)
    {{:value, 5, 51}, q} = HeapQueue.pop(q)
    {{:value, 60}, q} = HeapQueue.pop_value(q)
    {{:value, 6, 61}, q} = HeapQueue.pop(q)
    {{:value, 70}, q} = HeapQueue.pop_value(q)
    {{:value, 7, 71}, q} = HeapQueue.pop(q)
    {{:value, 80}, q} = HeapQueue.pop_value(q)
    {{:value, 8, 81}, q} = HeapQueue.pop(q)
    {{:value, 90}, q} = HeapQueue.pop_value(q)
    {{:value, 9, 91}, q} = HeapQueue.pop(q)
    {{:value, 100}, q} = HeapQueue.pop_value(q)
    {{:value, 10, 101}, q} = HeapQueue.pop(q)
    {{:value, 110}, q} = HeapQueue.pop_value(q)
    {{:value, 11, 111}, q} = HeapQueue.pop(q)
    {{:value, 120}, q} = HeapQueue.pop_value(q)
    {{:value, 12, 121}, q} = HeapQueue.pop(q)
    {{:value, 130}, q} = HeapQueue.pop_value(q)
    {{:value, 13, 131}, q} = HeapQueue.pop(q)
    {{:value, 140}, q} = HeapQueue.pop_value(q)
    {{:value, 14, 141}, q} = HeapQueue.pop(q)
    {{:value, 150}, q} = HeapQueue.pop_value(q)
    {{:value, 15, 151}, q} = HeapQueue.pop(q)
    {{:value, 160}, q} = HeapQueue.pop_value(q)
    {{:value, 16, 161}, q} = HeapQueue.pop(q)
    {{:value, 170}, q} = HeapQueue.pop_value(q)
    {{:value, 17, 171}, q} = HeapQueue.pop(q)
    {{:value, 180}, q} = HeapQueue.pop_value(q)
    {{:value, 18, 181}, q} = HeapQueue.pop(q)
    {{:value, 190}, q} = HeapQueue.pop_value(q)
    {{:value, 19, 191}, q} = HeapQueue.pop(q)
    {{:value, 200}, q} = HeapQueue.pop_value(q)
    {{:value, 20, 201}, q} = HeapQueue.pop(q)
    assert HeapQueue.empty?(q)
    {:empty, q1} = HeapQueue.pop_value(q)
    {:empty, q2} = HeapQueue.pop(q)
    assert HeapQueue.empty?(q1)
    assert HeapQueue.empty?(q2)
  end
end
