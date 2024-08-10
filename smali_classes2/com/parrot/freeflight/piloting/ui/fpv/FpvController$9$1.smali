.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$9$1;
.super Ljava/lang/Object;
.source "FpvController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$9;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$9;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$9$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$9$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$9;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$9;->val$fpvGLSurfaceViewRef:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->onPause()V

    .line 546
    return-void
.end method
