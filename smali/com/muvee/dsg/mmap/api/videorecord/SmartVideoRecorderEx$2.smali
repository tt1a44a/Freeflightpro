.class Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$2;
.super Ljava/lang/Object;
.source "SmartVideoRecorderEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->l()V
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
    .line 1041
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$2;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$2;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;)V

    .line 1044
    return-void
.end method
