.class Lcom/parrot/freeflight/tapmode/TapModeMapActionController$3;
.super Ljava/lang/Object;
.source "TapModeMapActionController.java"

# interfaces
.implements Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$3;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapTouchDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$3;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$402(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;F)F

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$3;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$502(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;F)F

    .line 136
    return-void
.end method
