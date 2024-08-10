.class Lcom/parrot/freeflight/followme/LynxController$2;
.super Ljava/lang/Object;
.source "LynxController.java"

# interfaces
.implements Lcom/parrot/arsdk/lynx/LynxManager$OnLynxProcessFrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/followme/LynxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/followme/LynxController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/followme/LynxController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/followme/LynxController;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/parrot/freeflight/followme/LynxController$2;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessFrameResultUpdate(Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;)V
    .locals 9
    .param p1, "result"    # Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 431
    iget v0, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->status:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v5, :cond_2

    move v8, v5

    .line 432
    .local v8, "resetStatus":Z
    :goto_0
    iget v0, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->quality:I

    if-lez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController$2;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/LynxController;->access$100(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v0

    iget v1, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->target_azimuth:F

    iget v2, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->target_elevation:F

    iget v3, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->change_of_scale:F

    iget v4, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->quality:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    if-eqz v8, :cond_3

    :goto_1
    iget-wide v6, p1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->frame_ts:J

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->lynxDataAt(FFFBBJ)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController$2;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/LynxController;->access$000(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/parrot/freeflight/followme/LynxController$2;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/LynxController;->access$200(Lcom/parrot/freeflight/followme/LynxController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/followme/LynxController$2$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/followme/LynxController$2$1;-><init>(Lcom/parrot/freeflight/followme/LynxController$2;Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 447
    :cond_1
    return-void

    .end local v8    # "resetStatus":Z
    :cond_2
    move v8, v6

    .line 431
    goto :goto_0

    .restart local v8    # "resetStatus":Z
    :cond_3
    move v5, v6

    .line 433
    goto :goto_1
.end method
