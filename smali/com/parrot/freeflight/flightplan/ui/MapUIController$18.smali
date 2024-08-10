.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$18;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/ui/MapUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 983
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$18;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapScroll(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 986
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$18;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->setCenterOn(I)V

    .line 987
    return v1
.end method
