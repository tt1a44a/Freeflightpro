.class Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$2;
.super Ljava/lang/Object;
.source "SnapshotTaker.java"

# interfaces
.implements Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->takeSnapshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "openglBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->access$202(Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->access$100(Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;)V

    .line 61
    return-void
.end method
