.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;
.super Ljava/lang/Enum;
.source "MediaContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MV_MVVE_CREDIT_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

.field public static final enum MV_MVVE_INTERTITLE_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

.field public static final enum MV_MVVE_THEME_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

.field public static final enum MV_MVVE_TITLE_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

.field public static final enum MV_MVVE_USER_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    const-string v1, "MV_MVVE_USER_CONTENT"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;->MV_MVVE_USER_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    .line 7
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    const-string v1, "MV_MVVE_THEME_CONTENT"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;->MV_MVVE_THEME_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    .line 9
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    const-string v1, "MV_MVVE_TITLE_CONTENT"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;->MV_MVVE_TITLE_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    .line 11
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    const-string v1, "MV_MVVE_CREDIT_CONTENT"

    invoke-direct {v0, v1, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;->MV_MVVE_CREDIT_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    .line 13
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    const-string v1, "MV_MVVE_INTERTITLE_CONTENT"

    invoke-direct {v0, v1, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;->MV_MVVE_INTERTITLE_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;->MV_MVVE_USER_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;->MV_MVVE_THEME_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;->MV_MVVE_TITLE_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;->MV_MVVE_CREDIT_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;->MV_MVVE_INTERTITLE_CONTENT:Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/MediaContentType;

    return-object v0
.end method
