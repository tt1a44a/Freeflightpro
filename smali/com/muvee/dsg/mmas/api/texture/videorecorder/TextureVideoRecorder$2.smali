.class Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$2;
.super Ljava/lang/Object;
.source "TextureVideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$2;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$2;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)V

    .line 106
    return-void
.end method
