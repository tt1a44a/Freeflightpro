.class Lcom/parrot/arsdk/lynx/LynxManager$1;
.super Ljava/lang/Object;
.source "LynxManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/lynx/LynxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/lynx/LynxManager;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/lynx/LynxManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/lynx/LynxManager;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 86
    const/4 v1, -0x8

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 88
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v1}, Lcom/parrot/arsdk/lynx/LynxManager;->access$000(Lcom/parrot/arsdk/lynx/LynxManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 90
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v1}, Lcom/parrot/arsdk/lynx/LynxManager;->access$100(Lcom/parrot/arsdk/lynx/LynxManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 95
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v1}, Lcom/parrot/arsdk/lynx/LynxManager;->access$200(Lcom/parrot/arsdk/lynx/LynxManager;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 96
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v1}, Lcom/parrot/arsdk/lynx/LynxManager;->access$100(Lcom/parrot/arsdk/lynx/LynxManager;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v1}, Lcom/parrot/arsdk/lynx/LynxManager;->access$000(Lcom/parrot/arsdk/lynx/LynxManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 144
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v1}, Lcom/parrot/arsdk/lynx/LynxManager;->access$700(Lcom/parrot/arsdk/lynx/LynxManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    iget-object v2, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v2}, Lcom/parrot/arsdk/lynx/LynxManager;->access$700(Lcom/parrot/arsdk/lynx/LynxManager;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/parrot/arsdk/lynx/LynxManager;->access$1600(Lcom/parrot/arsdk/lynx/LynxManager;J)J

    .line 146
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/parrot/arsdk/lynx/LynxManager;->access$702(Lcom/parrot/arsdk/lynx/LynxManager;J)J

    .line 148
    :cond_2
    return-void

    .line 100
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v1}, Lcom/parrot/arsdk/lynx/LynxManager;->access$300(Lcom/parrot/arsdk/lynx/LynxManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v1}, Lcom/parrot/arsdk/lynx/LynxManager;->access$400(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    move-result-object v1

    iget v1, v1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->quality:I

    if-lez v1, :cond_4

    .line 101
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v1}, Lcom/parrot/arsdk/lynx/LynxManager;->access$500(Lcom/parrot/arsdk/lynx/LynxManager;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    .line 102
    invoke-static {v2}, Lcom/parrot/arsdk/lynx/LynxManager;->access$400(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    move-result-object v2

    iget v2, v2, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->target_left:F

    iget-object v3, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    .line 103
    invoke-static {v3}, Lcom/parrot/arsdk/lynx/LynxManager;->access$400(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    move-result-object v3

    iget v3, v3, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->target_top:F

    iget-object v4, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    .line 104
    invoke-static {v4}, Lcom/parrot/arsdk/lynx/LynxManager;->access$400(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    move-result-object v4

    iget v4, v4, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->target_width:F

    iget-object v5, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v5}, Lcom/parrot/arsdk/lynx/LynxManager;->access$400(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    move-result-object v5

    iget v5, v5, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->target_left:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    .line 105
    invoke-static {v5}, Lcom/parrot/arsdk/lynx/LynxManager;->access$400(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    move-result-object v5

    iget v5, v5, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->target_height:F

    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v6}, Lcom/parrot/arsdk/lynx/LynxManager;->access$400(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    move-result-object v6

    iget v6, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->target_top:F

    add-float/2addr v5, v6

    .line 101
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 107
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/parrot/arsdk/lynx/LynxManager;->access$302(Lcom/parrot/arsdk/lynx/LynxManager;Z)Z

    .line 108
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/parrot/arsdk/lynx/LynxManager;->access$602(Lcom/parrot/arsdk/lynx/LynxManager;Z)Z

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v1}, Lcom/parrot/arsdk/lynx/LynxManager;->access$600(Lcom/parrot/arsdk/lynx/LynxManager;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 112
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    iget-object v2, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v2}, Lcom/parrot/arsdk/lynx/LynxManager;->access$700(Lcom/parrot/arsdk/lynx/LynxManager;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    .line 113
    invoke-static {v4}, Lcom/parrot/arsdk/lynx/LynxManager;->access$500(Lcom/parrot/arsdk/lynx/LynxManager;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    .line 114
    invoke-static {v5}, Lcom/parrot/arsdk/lynx/LynxManager;->access$500(Lcom/parrot/arsdk/lynx/LynxManager;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    .line 115
    invoke-static {v6}, Lcom/parrot/arsdk/lynx/LynxManager;->access$500(Lcom/parrot/arsdk/lynx/LynxManager;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v7}, Lcom/parrot/arsdk/lynx/LynxManager;->access$500(Lcom/parrot/arsdk/lynx/LynxManager;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    .line 116
    invoke-static {v7}, Lcom/parrot/arsdk/lynx/LynxManager;->access$500(Lcom/parrot/arsdk/lynx/LynxManager;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v8}, Lcom/parrot/arsdk/lynx/LynxManager;->access$500(Lcom/parrot/arsdk/lynx/LynxManager;)Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    .line 112
    invoke-static/range {v1 .. v7}, Lcom/parrot/arsdk/lynx/LynxManager;->access$800(Lcom/parrot/arsdk/lynx/LynxManager;JFFFF)V

    .line 118
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/parrot/arsdk/lynx/LynxManager;->access$602(Lcom/parrot/arsdk/lynx/LynxManager;Z)Z

    .line 119
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/parrot/arsdk/lynx/LynxManager;->access$902(Lcom/parrot/arsdk/lynx/LynxManager;Z)Z

    .line 122
    :cond_5
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v1}, Lcom/parrot/arsdk/lynx/LynxManager;->access$1000(Lcom/parrot/arsdk/lynx/LynxManager;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 123
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    iget-object v2, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v2}, Lcom/parrot/arsdk/lynx/LynxManager;->access$700(Lcom/parrot/arsdk/lynx/LynxManager;)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/parrot/arsdk/lynx/LynxManager;->access$1100(Lcom/parrot/arsdk/lynx/LynxManager;JFFF)V

    .line 124
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/parrot/arsdk/lynx/LynxManager;->access$1002(Lcom/parrot/arsdk/lynx/LynxManager;Z)Z

    .line 127
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 128
    .local v12, "startTime":J
    invoke-static {}, Lcom/parrot/arsdk/lynx/LynxManager;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LynxManager processFrame"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    iget-object v2, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v2}, Lcom/parrot/arsdk/lynx/LynxManager;->access$700(Lcom/parrot/arsdk/lynx/LynxManager;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v4}, Lcom/parrot/arsdk/lynx/LynxManager;->access$1300(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    move-result-object v4

    iget-object v4, v4, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v5}, Lcom/parrot/arsdk/lynx/LynxManager;->access$1300(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    move-result-object v5

    iget-object v5, v5, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v6}, Lcom/parrot/arsdk/lynx/LynxManager;->access$1300(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    move-result-object v6

    iget-object v6, v6, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->data:[[B

    const/4 v7, 0x2

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v7}, Lcom/parrot/arsdk/lynx/LynxManager;->access$1300(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v8}, Lcom/parrot/arsdk/lynx/LynxManager;->access$400(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/parrot/arsdk/lynx/LynxManager;->access$1400(Lcom/parrot/arsdk/lynx/LynxManager;J[B[B[BLcom/parrot/arsdk/lynx/LynxManager$LynxInput;Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    .line 130
    invoke-static {v1}, Lcom/parrot/arsdk/lynx/LynxManager;->access$1500(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$OnLynxProcessFrameListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v1}, Lcom/parrot/arsdk/lynx/LynxManager;->access$900(Lcom/parrot/arsdk/lynx/LynxManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v12

    const-wide/16 v4, 0x3e8

    div-long v10, v2, v4

    .line 132
    .local v10, "processTime":J
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v1}, Lcom/parrot/arsdk/lynx/LynxManager;->access$400(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v2}, Lcom/parrot/arsdk/lynx/LynxManager;->access$1300(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;

    move-result-object v2

    iget-wide v2, v2, Lcom/parrot/arsdk/lynx/LynxManager$LynxInput;->frame_ts:J

    iput-wide v2, v1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->frame_ts:J

    .line 133
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v1}, Lcom/parrot/arsdk/lynx/LynxManager;->access$400(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    move-result-object v1

    iput-wide v10, v1, Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;->processTime:J

    .line 134
    iget-object v1, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v1}, Lcom/parrot/arsdk/lynx/LynxManager;->access$1500(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$OnLynxProcessFrameListener;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/lynx/LynxManager$1;->this$0:Lcom/parrot/arsdk/lynx/LynxManager;

    invoke-static {v2}, Lcom/parrot/arsdk/lynx/LynxManager;->access$400(Lcom/parrot/arsdk/lynx/LynxManager;)Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/parrot/arsdk/lynx/LynxManager$OnLynxProcessFrameListener;->onProcessFrameResultUpdate(Lcom/parrot/arsdk/lynx/LynxManager$LynxResult;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 138
    .end local v10    # "processTime":J
    .end local v12    # "startTime":J
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
