.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;
.super Ljava/lang/Enum;
.source "SlotType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum E_MVVE_SLOT_BEGIN:Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

.field public static final enum E_MVVE_SLOT_END:Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

.field public static final enum E_MVVE_SLOT_GENERAL:Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

.field public static final enum E_MVVE_SLOT_TYPE_MAX:Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    const-string v1, "E_MVVE_SLOT_GENERAL"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;->E_MVVE_SLOT_GENERAL:Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    .line 7
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    const-string v1, "E_MVVE_SLOT_BEGIN"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;->E_MVVE_SLOT_BEGIN:Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    .line 9
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    const-string v1, "E_MVVE_SLOT_END"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;->E_MVVE_SLOT_END:Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    .line 11
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    const-string v1, "E_MVVE_SLOT_TYPE_MAX"

    invoke-direct {v0, v1, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;->E_MVVE_SLOT_TYPE_MAX:Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;->E_MVVE_SLOT_GENERAL:Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;->E_MVVE_SLOT_BEGIN:Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;->E_MVVE_SLOT_END:Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;->E_MVVE_SLOT_TYPE_MAX:Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/SlotType;

    return-object v0
.end method
