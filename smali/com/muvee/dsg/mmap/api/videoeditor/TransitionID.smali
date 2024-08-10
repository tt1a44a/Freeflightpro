.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;
.super Ljava/lang/Enum;
.source "TransitionID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum E_MVVE_CROSS_DISSOLVE:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

.field public static final enum E_MVVE_CUBE:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

.field public static final enum E_MVVE_GRADIENT_WIPE:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

.field public static final enum E_MVVE_MAX_TRANSITION:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

.field public static final enum E_MVVE_MULTILAYER:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

.field public static final enum E_MVVE_NO_TRANSITION:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

.field public static final enum E_MVVE_PAGE_CURL:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

.field public static final enum E_MVVE_SLIDE:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

.field public static final enum E_MVVE_SURFACE_FLIP:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    const-string v1, "E_MVVE_NO_TRANSITION"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_NO_TRANSITION:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    .line 13
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    const-string v1, "E_MVVE_CROSS_DISSOLVE"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_CROSS_DISSOLVE:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    .line 15
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    const-string v1, "E_MVVE_GRADIENT_WIPE"

    invoke-direct {v0, v1, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_GRADIENT_WIPE:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    .line 17
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    const-string v1, "E_MVVE_SURFACE_FLIP"

    invoke-direct {v0, v1, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_SURFACE_FLIP:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    .line 19
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    const-string v1, "E_MVVE_CUBE"

    invoke-direct {v0, v1, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_CUBE:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    .line 21
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    const-string v1, "E_MVVE_SLIDE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_SLIDE:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    .line 23
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    const-string v1, "E_MVVE_MULTILAYER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_MULTILAYER:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    .line 25
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    const-string v1, "E_MVVE_PAGE_CURL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_PAGE_CURL:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    .line 27
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    const-string v1, "E_MVVE_MAX_TRANSITION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_MAX_TRANSITION:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    .line 9
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_NO_TRANSITION:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_CROSS_DISSOLVE:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_GRADIENT_WIPE:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_SURFACE_FLIP:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    aput-object v1, v0, v6

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_CUBE:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_SLIDE:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_MULTILAYER:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_PAGE_CURL:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_MAX_TRANSITION:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    aput-object v2, v0, v1

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    return-object v0
.end method
