.class Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;
.super Ljava/lang/Object;
.source "TimelineGroupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

.field final synthetic val$gestureDetector:Landroid/view/GestureDetector;

.field final synthetic val$scaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;Landroid/view/ScaleGestureDetector;Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;->val$scaleDetector:Landroid/view/ScaleGestureDetector;

    iput-object p3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;->val$scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$1;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
