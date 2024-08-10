.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$5;
.super Ljava/lang/Object;
.source "FpvController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->initFpvView(Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$900(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1000(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$900(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 368
    :cond_0
    return-void
.end method
