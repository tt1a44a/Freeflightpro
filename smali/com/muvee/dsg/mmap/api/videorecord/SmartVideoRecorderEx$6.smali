.class Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$6;
.super Ljava/lang/Object;
.source "SmartVideoRecorderEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->startRecording(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;)V
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
    .line 1127
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$6;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$6;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V

    .line 1130
    return-void
.end method
