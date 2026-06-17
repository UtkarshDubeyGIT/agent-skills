# Shadcn UI — Component Reference

Exhaustive list of every built-in shadcn/ui component and quick usage patterns.

---

## Layout & Structure

| Component | One-liner | Minimal usage |
|-----------|-----------|---------------|
| **Accordion** | Vertically stacked headings that reveal content. | `<Accordion type="single" collapsible>` with `<AccordionItem>` & `<AccordionTrigger>` / `<AccordionContent>`. |
| **Aspect Ratio** | Constrains a child to a given ratio. | `<AspectRatio ratio={16 / 9}><img … /></AspectRatio>` |
| **Avatar** | Image with a readable fallback. | `<Avatar><AvatarImage src="…" /><AvatarFallback>AB</AvatarFallback></Avatar>` |
| **Breadcrumb** | Hierarchical path of links. | `<Breadcrumb><BreadcrumbItem><BreadcrumbLink href="…">Home</BreadcrumbLink></BreadcrumbItem>…</Breadcrumb>` |
| **Button Group** | Groups related buttons. | Wrap `<Button>` siblings in a container with flex gap or use the shadcn `ButtonGroup` wrapper if available. |
| **Card** | Content container with header / content / footer. | `<Card><CardHeader><CardTitle>…</CardTitle></CardHeader><CardContent>…</CardContent></Card>` |
| **Direction** | Provider for RTL/LTR text direction. | Wrap top-level layout in `<DirectionProvider dir="rtl">`. |
| **Empty** | Empty-state illustration + message. | `<Empty image="/empty.svg" title="No items yet" description="Create one to get started." action={<Button>Add</Button>} />` |
| **Field** | Accessible label + control + help text. | `<Field label="Email" helperText="We'll never share your email."><Input /></Field>` |
| **Item** | Media + title + description + actions in a row. | `<Item media={<Avatar … />} title="Title" description="…" action={<Button>Action</Button>} />` |
| **Scroll Area** | Custom-styled scroll container. | `<ScrollArea className="h-64">{longContent}</ScrollArea>` |
| **Separator** | Visual or semantic divider. | `<Separator />` or `<Separator orientation="vertical" />` |

---

## Navigation

| Component | One-liner | Minimal usage |
|-----------|-----------|---------------|
| **Command** | Search-heavy menu / command palette. | `<Command><CommandInput placeholder="Search…" /><CommandList><CommandItem>Profile</CommandItem></CommandList></Command>` |
| **Context Menu** | Right-click menu. | `<ContextMenu><ContextMenuTrigger>Right click me</ContextMenuTrigger><ContextMenuContent><ContextMenuItem>Cut</ContextMenuItem></ContextMenuContent></ContextMenu>` |
| **Dropdown Menu** | Button-triggered floating actions. | `<DropdownMenu><DropdownMenuTrigger asChild><Button>Open</Button></DropdownMenuTrigger><DropdownMenuContent><DropdownMenuItem>Action</DropdownMenuItem></DropdownMenuContent></DropdownMenu>` |
| **Menubar** | Horizontal desktop-style menu bar. | `<Menubar><MenubarMenu><MenubarTrigger>File</MenubarTrigger>…</MenubarMenu></Menubar>` |
| **Navigation Menu** | Multi-level navigation with content panels. | `<NavigationMenu><NavigationMenuList>…</NavigationMenuList></NavigationMenu>` |
| **Pagination** | Page links. | `<Pagination><PaginationContent><PaginationItem><PaginationLink href="#">1</PaginationLink></PaginationItem></PaginationContent></Pagination>` |
| **Sidebar** | Composable themeable sidebar. | Use `<SidebarProvider><Sidebar>…</Sidebar><main>…</main></SidebarProvider>` |
| **Sheet** | Slide-in panel (Dialog extension). | `<Sheet><SheetTrigger>Open</SheetTrigger><SheetContent side="left">…</SheetContent></Sheet>` |

---

## Feedback & Status

| Component | One-liner | Minimal usage |
|-----------|-----------|---------------|
| **Alert** | Callout for user attention. | `<Alert><AlertTitle>Heads up!</AlertTitle><AlertDescription>…</AlertDescription></Alert>` |
| **Alert Dialog** | Modal with required action. | `<AlertDialog><AlertDialogTrigger>Open</AlertDialogTrigger><AlertDialogContent><AlertDialogHeader><AlertDialogTitle>Confirm</AlertDialogTitle></AlertDialogHeader><AlertDialogFooter><AlertDialogCancel>Cancel</AlertDialogCancel><AlertDialogAction>Confirm</AlertDialogAction></AlertDialogFooter></AlertDialogContent></AlertDialog>` |
| **Badge** | Small status / label tag. | `<Badge>active</Badge>` or `<Badge variant="outline">draft</Badge>` |
| **Hover Card** | Preview behind a link on hover. | `<HoverCard><HoverCardTrigger>Hover me</HoverCardTrigger><HoverCardContent>Preview info</HoverCardContent></HoverCard>` |
| **Progress** | Completion bar. | `<Progress value={33} />` |
| **Skeleton** | Loading placeholder. | `<Skeleton className="h-4 w-full" />` |
| **Sonner** | Toast notifications. | `import { toast } from 'sonner'; toast('Saved!');` |
| **Spinner** | Inline loading indicator. | `<Spinner className="h-4 w-4" />` |
| **Toast** | Temporary message (legacy). | Trigger via `toast({ title: 'Done' })`. Prefer Sonner when possible. |
| **Tooltip** | Popup on hover / focus. | `<Tooltip><TooltipTrigger>Hover</TooltipTrigger><TooltipContent>Info</TooltipContent></Tooltip>` |

---

## Forms & Inputs

| Component | One-liner | Minimal usage |
|-----------|-----------|---------------|
| **Calendar** | Date selection. | `<Calendar mode="single" selected={date} onSelect={setDate} />` |
| **Checkbox** | Boolean toggle. | `<Checkbox checked={checked} onCheckedChange={setChecked} />` |
| **Collapsible** | Expand / collapse panel. | `<Collapsible><CollapsibleTrigger>Open</CollapsibleTrigger><CollapsibleContent>Hidden content</CollapsibleContent></Collapsible>` |
| **Combobox** | Autocomplete list + input. | Compose `Popover` + `Command` + `Button`. See pattern below. |
| **Date Picker** | Date input with Calendar popover. | Compose `Popover` + `Calendar`. See pattern below. |
| **Dialog** | Modal overlay window. | `<Dialog><DialogTrigger>Open</DialogTrigger><DialogContent><DialogHeader><DialogTitle>Title</DialogTitle></DialogHeader>…</DialogContent></Dialog>` |
| **Drawer** | Bottom / side sliding panel. | `<Drawer><DrawerTrigger>Open</DrawerTrigger><DrawerContent>…</DrawerContent></Drawer>` |
| **Input** | Text input. | `<Input placeholder="Email" type="email" />` |
| **Input Group** | Input with addons / buttons. | Wrap `<Input>` and `<Button>` in a flex container styled as `flex gap-2` or use a dedicated `InputGroup` wrapper. |
| **Input OTP** | One-time password input. | `<InputOTP maxLength={6} />` |
| **Kbd** | Keyboard key display. | `<Kbd>⌘ K</Kbd>` |
| **Label** | Accessible label. | `<Label htmlFor="email">Email</Label>` |
| **Native Select** | Styled HTML select. | `<NativeSelect><option>One</option></NativeSelect>` |
| **Popover** | Floating content triggered by a button. | `<Popover><PopoverTrigger>Open</PopoverTrigger><PopoverContent>Content</PopoverContent></Popover>` |
| **Radio Group** | Single-choice set. | `<RadioGroup value={value} onValueChange={setValue}><RadioGroupItem value="a" />A</RadioGroup>` |
| **Resizable** | Keyboard-resizable panel group. | `<ResizablePanelGroup><ResizablePanel>…</ResizablePanel><ResizableHandle /><ResizablePanel>…</ResizablePanel></ResizablePanelGroup>` |
| **Select** | Dropdown list of options. | `<Select><SelectTrigger><SelectValue placeholder="Pick one" /></SelectTrigger><SelectContent><SelectItem value="apple">Apple</SelectItem></SelectContent></Select>` |
| **Slider** | Range value picker. | `<Slider defaultValue={[50]} max={100} step={1} />` |
| **Switch** | On/off toggle. | `<Switch checked={on} onCheckedChange={setOn} />` |
| **Textarea** | Multi-line text. | `<Textarea placeholder="Message" />` |
| **Toggle** | Two-state button. | `<Toggle pressed={on} onPressedChange={setOn}>Bold</Toggle>` |
| **Toggle Group** | Multiple toggles in a set. | `<ToggleGroup value={value} onValueChange={setValue}><ToggleGroupItem value="b">Bold</ToggleGroupItem></ToggleGroup>` |

---

## Data Display

| Component | One-liner | Minimal usage |
|-----------|-----------|---------------|
| **Carousel** | Touch-swipe slider. | `<Carousel><CarouselContent><CarouselItem>…</CarouselItem></CarouselContent><CarouselPrevious /><CarouselNext /></Carousel>` |
| **Chart** | Charts via Recharts. | Import specific chart wrappers from `@/components/ui/chart` and pass data + config props. |
| **Data Table** | TanStack-powered table. | Use `<DataTable columns={columns} data={data} />` where `columns` are standard TanStack column definitions. |
| **Table** | Basic responsive table. | `<Table><TableHeader><TableRow><TableHead>Col</TableHead></TableRow></TableHeader><TableBody><TableRow><TableCell>Val</TableCell></TableRow></TableBody></Table>` |
| **Tabs** | Layered content sections. | `<Tabs defaultValue="a"><TabsList><TabsTrigger value="a">Tab A</TabsTrigger></TabsList><TabsContent value="a">…</TabsContent></Tabs>` |
| **Typography** | Pre-styled headings, lists, paragraphs. | Use `<H1>`, `<P>`, `<Blockquote>`, `<List>` wrappers as needed, or standard classes mapped to the system. |

---

## Compose-select patterns

### Date Picker (Calendar + Popover)

```tsx
import { Popover, PopoverContent, PopoverTrigger } from "@/components/ui/popover"
import { Calendar } from "@/components/ui/calendar"
import { Button } from "@/components/ui/button"

<Popover>
  <PopoverTrigger asChild>
    <Button variant="outline">Pick date</Button>
  </PopoverTrigger>
  <PopoverContent className="w-auto p-0">
    <Calendar mode="single" selected={date} onSelect={setDate} />
  </PopoverContent>
</Popover>
```

### Combobox (Command + Popover)

```tsx
import { Popover, PopoverContent, PopoverTrigger } from "@/components/ui/popover"
import { Command, CommandInput, CommandItem, CommandList } from "@/components/ui/command"
import { Button } from "@/components/ui/button"

<Popover>
  <PopoverTrigger asChild>
    <Button variant="outline">Select item</Button>
  </PopoverTrigger>
  <PopoverContent className="w-64 p-0">
    <Command>
      <CommandInput placeholder="Search…" />
      <CommandList>
        <CommandItem>Item 1</CommandItem>
      </CommandList>
    </Command>
  </PopoverContent>
</Popover>
```

### Data Table with columns

```tsx
import { DataTable } from "@/components/ui/data-table"

const columns = [
  { accessorKey: "name", header: "Name" },
  { accessorKey: "status", header: "Status" },
]

<DataTable columns={columns} data={rows} />
```

---

## Controlled vs Uncontrolled quick rules

- **Uncontrolled** is fine for static forms; just supply `defaultValue` / `defaultChecked`.
- **Controlled** is required when the value drives UI state elsewhere; use `value` + `onChange` (or `onValueChange` / `onCheckedChange` depending on the component API).
- Tables, calendars, and data tables should almost always be controlled so sorting / pagination works.
