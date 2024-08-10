.class public final enum Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;
.super Ljava/lang/Enum;
.source "FrameTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSEST_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

.field public static final enum NEXT_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

.field public static final enum PREVIOUS_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    const-string v1, "CLOSEST_SYNC"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;->CLOSEST_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    .line 129
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    const-string v1, "NEXT_SYNC"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;->NEXT_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    .line 133
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    const-string v1, "PREVIOUS_SYNC"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;->PREVIOUS_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;->CLOSEST_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;->NEXT_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;->PREVIOUS_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;->a:[Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;
    .locals 1

    .prologue
    .line 121
    const-class v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;->a:[Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SyncFrameTime$Mode;

    return-object v0
.end method
