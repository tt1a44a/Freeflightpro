.class Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder$2;
.super Ljava/lang/Object;
.source "ActionListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;-><init>(Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;

.field final synthetic val$this$0:Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder$2;->this$1:Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder$2;->val$this$0:Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder$2;->this$1:Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;->this$0:Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;->access$000(Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;)Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;->isEditionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder$2;->this$1:Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;->this$0:Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;->access$000(Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;)Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder$2;->this$1:Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;

    iget-object v1, v1, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;->this$0:Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;->access$100(Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;)[Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder$2;->this$1:Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;->getAdapterPosition()I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {v0, p1, p2, v1}, Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 79
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
