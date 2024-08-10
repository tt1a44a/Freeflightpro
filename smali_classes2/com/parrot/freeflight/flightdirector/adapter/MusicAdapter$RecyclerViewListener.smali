.class Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;
.super Ljava/lang/Object;
.source "MusicAdapter.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewListener"
.end annotation


# static fields
.field private static final MAX_CLICK_DISTANCE:I = 0x14


# instance fields
.field private moving:Z

.field private pressedX:F

.field private pressedY:F

.field private stayedWithinClickDistance:Z

.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)V
    .locals 1

    .prologue
    .line 351
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;->moving:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;
    .param p2, "x1"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;-><init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 360
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 380
    :cond_0
    :goto_0
    return v5

    .line 362
    :pswitch_0
    iput-boolean v6, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;->moving:Z

    .line 363
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;->pressedX:F

    .line 364
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;->pressedY:F

    .line 365
    iput-boolean v6, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;->stayedWithinClickDistance:Z

    goto :goto_0

    .line 368
    :pswitch_1
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;->moving:Z

    if-eqz v0, :cond_0

    .line 369
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;->stayedWithinClickDistance:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$1800(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;->pressedX:F

    iget v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;->pressedY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/flightdirector/util/DrawHelper;->distance(Landroid/content/res/Resources;FFFF)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 370
    iput-boolean v5, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;->stayedWithinClickDistance:Z

    .line 371
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$500(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightdirector/view/ExtendedLinearLayoutManager;

    invoke-virtual {v0, v6}, Lcom/parrot/freeflight/flightdirector/view/ExtendedLinearLayoutManager;->setScrollEnabled(Z)V

    goto :goto_0

    .line 377
    :pswitch_2
    iput-boolean v5, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;->moving:Z

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 391
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 386
    return-void
.end method
