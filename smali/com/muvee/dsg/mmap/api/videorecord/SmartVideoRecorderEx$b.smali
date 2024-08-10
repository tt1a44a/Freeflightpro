.class Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;
.super Ljava/lang/Object;
.source "SmartVideoRecorderEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

.field public d:Z

.field public e:Landroid/graphics/RectF;

.field final synthetic f:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;


# direct methods
.method private constructor <init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V
    .locals 1

    .prologue
    .line 126
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->f:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$1;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V

    return-void
.end method
