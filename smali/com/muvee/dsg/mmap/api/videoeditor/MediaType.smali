.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MV_MVVE_MEDIA_AUDIO:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

.field public static final enum MV_MVVE_MEDIA_COLOR_FRAME:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

.field public static final enum MV_MVVE_MEDIA_IMAGE:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

.field public static final enum MV_MVVE_MEDIA_VIDEO:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    const-string v1, "MV_MVVE_MEDIA_VIDEO"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;->MV_MVVE_MEDIA_VIDEO:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    .line 16
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    const-string v1, "MV_MVVE_MEDIA_IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;->MV_MVVE_MEDIA_IMAGE:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    .line 20
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    const-string v1, "MV_MVVE_MEDIA_AUDIO"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;->MV_MVVE_MEDIA_AUDIO:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    .line 25
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    const-string v1, "MV_MVVE_MEDIA_COLOR_FRAME"

    invoke-direct {v0, v1, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;->MV_MVVE_MEDIA_COLOR_FRAME:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;->MV_MVVE_MEDIA_VIDEO:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;->MV_MVVE_MEDIA_IMAGE:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;->MV_MVVE_MEDIA_AUDIO:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;->MV_MVVE_MEDIA_COLOR_FRAME:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    return-object v0
.end method
