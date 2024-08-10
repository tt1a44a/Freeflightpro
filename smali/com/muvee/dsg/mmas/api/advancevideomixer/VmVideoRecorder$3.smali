.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$3;
.super Ljava/lang/Object;
.source "VmVideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->startRecording(Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;

.field final synthetic b:[Z

.field final synthetic c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;[Z)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$3;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$3;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;

    iput-object p3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$3;->b:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$3;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    new-instance v1, Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$3;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-static {v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->d(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

    move-result-object v2

    iget-object v2, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;->file:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;Landroid/media/MediaMuxer;)Landroid/media/MediaMuxer;

    .line 120
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$3;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->e(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)V

    .line 121
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$3;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$3;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$3;->b:[Z

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;[ZI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
