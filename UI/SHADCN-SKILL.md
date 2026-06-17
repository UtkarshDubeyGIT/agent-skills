---
name: shadcn-ui
useWhen:>
  Build UIs, pages, forms, dashboards, or visual interfaces using shadcn/ui components.
  Trigger when the user says "make a UI", "build a frontend", "create a page", "make a form",
  "build a dashboard", "design a component", "make it look nice", "use shadcn", or any request
  involving React UI work. Also trigger when the user complains about bad/buggy/cramped UI and
  wants it fixed.
  Assumes shadcn/ui component library is or should be installed in the project.
---

# Shadcn UI Skill

Build clean, spacious, readable UIs using shadcn/ui components.
The goal is functional and good-looking, not award-winning.

## Core Philosophy

- **Spacious over cramped** — padding is cheap, frustration is expensive.
- **Readable over clever** — text must be legible at a glance.
- **Consistent over creative** — use shadcn components as-is, don't reinvent them.
- **Functional over flashy** — no animation unless it serves the user.

## Spacing Rules

Apply these spacing defaults across all generated UI code:

```text
Container padding:   p-6 minimum (p-8 on desktop)
Section gaps:        gap-4 to gap-6 between major sections
Card inner padding:  p-4 to p-6
Between form fields: space-y-4
Between buttons:     gap-2 to gap-3
Max content width:   max-w-4xl or max-w-5xl, centered with mx-auto
```

## Anti-Mistakes

| ❌ Don't | ✅ Do instead |
|----------|--------------|
| `className="p-1"` on cards | `className="p-4"` minimum |
| Raw `<div>` for buttons | `<Button variant="ghost">` |
| `text-xs` for body text | `text-sm` minimum for body |
| Inline `style={{ color: '#999' }}` | `className="text-muted-foreground"` |
| `text-gray-400` on `bg-gray-100` | `text-foreground` on `bg-muted` |
| No labels on inputs | Always pair `<Label>` with `<Input>` |
| Stacking cards with `mt-2` | Use `space-y-4` or `gap-4` on parent |
| Absolute positioning for layout | Use flexbox/grid |
| Custom colors for status | Use `<Badge>` variants |
| Stretched images without ratio | Wrap in `<AspectRatio>` |
| Zero-gap layouts | Always keep min `gap-4` between sections |

## One-Shot execution flow

Follow this exact one-shot sequence every time:

1. **Probe project** — check for `components.json` (shadcn/ui config).
   If missing: run `npx shadcn@latest init -d`, wait for completion.
2. **Detect router / target directory** —
   - If `app/` directory exists → use `app/` (Next.js App Router).
   - Else if `src/pages/` or `pages/` exists → use that (Next.js Pages Router).
   - Else if `src/` exists → use `src/components/`.
   - Else ask the user for target directory or default to `components/`.
3. **Generate code** — write the React / TSX file(s), using shadcn/ui imports.
   Use the built-in Common Components mapping below.
4. **Extract imports** — identify every shadcn component imported in the file.
5. **Install components** — run `npx shadcn@latest add <list>` where `<list>` is
   the space-separated component names extracted (e.g., `button card input dialog`).
   Wait for completion.
6. **Write file to disk** — save the generated file(s) to the detected path.

## Common Components mapping

Use these for the 90 % of UI requests. For anything else, read [REFERENCE.md](REFERENCE.md).

| Concept | shadcn Component |
|---------|-----------------|
| Button | `Button` from `@/components/ui/button` |
| Card / panel | `Card`, `CardHeader`, `CardTitle`, `CardContent`, `CardDescription`, `CardFooter` |
| Text input | `Input` from `@/components/ui/input` |
| Textarea | `Textarea` from `@/components/ui/textarea` |
| Checkbox / switch | `Checkbox` or `Switch` |
| Select dropdown | `Select`, `SelectTrigger`, `SelectValue`, `SelectContent`, `SelectItem` |
| Date picker | `Calendar` + `Popover` (see REFERENCE.md for pair) |
| Table / list | `Table`, `TableHeader`, `TableRow`, `TableHead`, `TableBody`, `TableCell` |
| Tabs | `Tabs`, `TabsList`, `TabsTrigger`, `TabsContent` |
| Modal / dialog | `Dialog`, `DialogTrigger`, `DialogContent`, `DialogHeader`, `DialogTitle` |
| Left sidebar nav | `Sidebar` or App Shell pattern (see REFERENCE.md) |
| Top nav | `Menubar` or `NavigationMenu` |
| Badge / tag | `Badge` from `@/components/ui/badge` |
| Loading skeleton | `Skeleton` from `@/components/ui/skeleton` |
| Combobox / autocomplete | `Command` + `Popover` (see REFERENCE.md) |
| Toast notification | `Sonner` or `Toast` |
| Rate / progress | `Progress`, `Slider` |
| Alert / banner | `Alert`, `AlertTitle`, `AlertDescription` |
| OTP input | `InputOTP` |
| Avatar | `Avatar`, `AvatarFallback`, `AvatarImage` |
| Breadcrumb | `Breadcrumb`, `BreadcrumbItem`, etc. |

## Typography & Color Tokens

Use shadcn CSS variables. Never hardcode hex colors.

```text
Backgrounds:   bg-background, bg-card, bg-muted
Text:          text-foreground (primary), text-muted-foreground (secondary)
Borders:       border (default), border-input (form fields)
Accents:       bg-primary text-primary-foreground
Destructive:   bg-destructive text-destructive-foreground
```

Never put gray text on a gray background; if contrast feels low, use `text-foreground`.

## Standard Page Templates

### Dashboard
```tsx
div className="flex h-screen">
  {/* Sidebar */}
  <aside className="w-60 border-r p-4 space-y-2">
    <h2 className="text-lg font-semibold px-2 mb-4">App Name</h2>
    <Button variant="ghost" className="w-full justify-start">Nav Item</Button>
  </aside>
  {/* Main */}
  <main className="flex-1 overflow-auto p-6 space-y-6">
    <h1 className="text-2xl font-semibold">Page Title</h1>
    <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
      <Card><CardHeader><CardTitle className="text-sm font-medium text-muted-foreground">Stat</CardTitle></CardHeader>
      <CardContent><p className="text-3xl font-bold">42</p></CardContent></Card>
    </div>
    <Card>
      <CardHeader><CardTitle>Section</CardTitle></CardHeader>
      <CardContent>...</CardContent>
    </Card>
  </main>
</div>
```

### Form
```tsx
<div className="container mx-auto max-w-2xl p-8">
  <h1 className="text-2xl font-semibold mb-6">Form Title</h1>
  <Card>
    <CardContent className="pt-6 space-y-4">
      <div className="space-y-2">
        <Label htmlFor="name">Field Label</Label>
        <Input id="name" placeholder="Placeholder text" />
      </div>
      <div className="flex justify-end gap-3 pt-2">
        <Button variant="outline">Cancel</Button>
        <Button>Submit</Button>
      </div>
    </CardContent>
  </Card>
</div>
```

### List / Table
```tsx
<div className="container mx-auto p-6 space-y-4">
  <div className="flex items-center justify-between">
    <h1 className="text-2xl font-semibold">Items</h1>
    <Button><Plus className="h-4 w-4 mr-2" /> Add New</Button>
  </div>
  <Card>
    <Table>
      <TableHeader>
        <TableRow><TableHead>Column</TableHead></TableRow>
      </TableHeader>
      <TableBody>
        <TableRow><TableCell>Value</TableCell></TableRow>
      </TableBody>
    </Table>
  </Card>
</div>
```

## Responsive Basics

Mobile-first, expand upward:

```text
grid-cols-1 → md:grid-cols-2 → lg:grid-cols-3
p-4 → md:p-6 → lg:p-8
text-xl → md:text-2xl
hidden → md:block (for sidebar on mobile)
```

## MCP fallback

If the agent has access to shadcn MCP tools (`shadcn_search`, `shadcn_install`), prefer them for searching niche components and installing.
Otherwise fall back to the CLI commands described in the execution flow above.

## Read [REFERENCE.md](REFERENCE.md) when

- You need the exact prop API for a specific component.
- You're unsure how to compose complex components (e.g., combobox, date picker, data table with sorting).
- You need to handle component state (controlled vs uncontrolled).
