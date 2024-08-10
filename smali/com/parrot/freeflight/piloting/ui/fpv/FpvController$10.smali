.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$10;
.super Ljava/lang/Object;
.source "FpvController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->destroyFpvView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

.field final synthetic val$fpvGLSurfaceViewRef:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$10;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$10;->val$fpvGLSurfaceViewRef:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$10;->val$fpvGLSurfaceViewRef:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->releaseSurfaceTexture()V

    .line 565
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$10;->val$fpvGLSurfaceViewRef:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$10$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$10$1;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$10;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 571
    return-void
.end method
