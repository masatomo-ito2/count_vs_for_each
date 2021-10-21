variable "map_list" {
  default = [
    {
      f = "a.txt"
      c = "this is a"
    },
    {
      f = "b.txt"
      c = "this is b"
    },
    {
      f = "c.txt"
      c = "this is c"
    }
  ]
}

resource "local_file" "multiple_count" {
  count = length(var.map_list)

  filename = "count_${var.map_list[count.index].f}"
  content  = "count_${var.map_list[count.index].c}"
}

resource "local_file" "multiple_for_each" {
  for_each = { for i in var.map_list : i.f => i }

  filename = "for_each_${each.value.f}"
  content  = "for_each_${each.value.c}"
}
