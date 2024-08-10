.class public Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ActionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ActionViewHolder"
.end annotation


# instance fields
.field private final mActionIcon:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;->this$0:Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;

    .line 65
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 66
    const v0, 0x7f0a0052

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;->mActionIcon:Landroid/widget/ImageButton;

    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;->mActionIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder$1;-><init>(Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;->mActionIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder$2;-><init>(Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method public refresh(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V
    .locals 2
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;->mActionIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getIconRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;->mActionIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getMainColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColor(Landroid/view/View;I)V

    .line 87
    return-void
.end method
