.class Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder$1;
.super Ljava/lang/Object;
.source "AOSAudioEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->prepare(Lcom/muvee/dsg/mmap/api/encoder/audio/AudioEncoderCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/encoder/audio/AudioEncoderCallBack;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;Lcom/muvee/dsg/mmap/api/encoder/audio/AudioEncoderCallBack;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder$1;->b:Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder$1;->a:Lcom/muvee/dsg/mmap/api/encoder/audio/AudioEncoderCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder$1;->b:Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder$1;->a:Lcom/muvee/dsg/mmap/api/encoder/audio/AudioEncoderCallBack;

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->a(Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;Lcom/muvee/dsg/mmap/api/encoder/audio/AudioEncoderCallBack;)V

    .line 33
    const-string v0, "audio.encoder.thread"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->quit(Ljava/lang/String;)V

    .line 34
    return-void
.end method
