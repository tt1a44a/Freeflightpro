.class Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$8;
.super Ljava/lang/Object;
.source "SmartVideoRecorderEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$8;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$8;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->b(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->deleteAllFBs()V

    .line 407
    return-void
.end method
