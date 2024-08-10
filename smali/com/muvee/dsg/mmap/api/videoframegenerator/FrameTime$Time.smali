.class public Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;
.super Ljava/lang/Object;
.source "FrameTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Time"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->a:J

    .line 77
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->CLOSEST_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    .line 81
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->a:J

    .line 77
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->CLOSEST_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    .line 88
    iput-wide p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->a:J

    .line 89
    return-void
.end method

.method public constructor <init>(JLcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;)V
    .locals 3

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->a:J

    .line 77
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->CLOSEST_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    .line 97
    iput-wide p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->a:J

    .line 98
    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;)J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    return-object v0
.end method


# virtual methods
.method public getMode()Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    return-object v0
.end method

.method public getTimeStampMs()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->a:J

    return-wide v0
.end method
