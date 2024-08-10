.class Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$1;
.super Ljava/lang/Object;
.source "PreGeneratorEngine.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->prepare([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onProgress(Ljava/lang/Object;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 249
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$2;->a:[I

    invoke-virtual {p2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;)J

    .line 253
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->PROCESS:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    invoke-static {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;)J

    move-result-wide v6

    long-to-float v6, v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    invoke-static {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->c(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;)J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack;->onProgress(Ljava/lang/Object;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
