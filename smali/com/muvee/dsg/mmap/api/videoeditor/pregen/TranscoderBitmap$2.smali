.class Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$2;
.super Ljava/lang/Object;
.source "TranscoderBitmap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->performTranscode(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$2;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$2;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->h(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)V

    .line 127
    return-void
.end method
