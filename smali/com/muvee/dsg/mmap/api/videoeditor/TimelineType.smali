.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;
.super Ljava/lang/Enum;
.source "TimelineType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum E_MVVE_TIMELINE_AUTO:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

.field public static final enum E_MVVE_TIMELINE_MANUAL:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

.field public static final enum E_MVVE_TIMELINE_TEMPLATE:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    const-string v1, "E_MVVE_TIMELINE_MANUAL"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;->E_MVVE_TIMELINE_MANUAL:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    .line 8
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    const-string v1, "E_MVVE_TIMELINE_AUTO"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;->E_MVVE_TIMELINE_AUTO:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    .line 10
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    const-string v1, "E_MVVE_TIMELINE_TEMPLATE"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;->E_MVVE_TIMELINE_TEMPLATE:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;->E_MVVE_TIMELINE_MANUAL:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;->E_MVVE_TIMELINE_AUTO:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;->E_MVVE_TIMELINE_TEMPLATE:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    return-object v0
.end method
