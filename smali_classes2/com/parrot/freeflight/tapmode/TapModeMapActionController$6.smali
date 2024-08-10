.class Lcom/parrot/freeflight/tapmode/TapModeMapActionController$6;
.super Ljava/lang/Object;
.source "TapModeMapActionController.java"

# interfaces
.implements Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;


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
    .line 197
    iput-object p1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$6;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$6;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$1602(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;I)I

    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$6;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v0, p2}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$1702(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;I)I

    .line 202
    return-void
.end method
