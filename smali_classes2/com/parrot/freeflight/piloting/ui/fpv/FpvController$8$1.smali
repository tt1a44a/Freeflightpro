.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8$1;
.super Ljava/lang/Object;
.source "FpvController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;->onSurfaceChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;

    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8$1;->val$width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 452
    const-string v0, "FF4.Fpv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content onSurfaceChanged mGlOverlayView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;

    iget-object v2, v2, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$700(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1700(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8$1;->val$width:I

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1800(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;I)V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$700(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->invalidate()V

    .line 457
    return-void
.end method
