.class public final enum Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
.super Ljava/lang/Enum;
.source "ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

.field public static final enum ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_2_4GHZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

.field public static final enum ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_5GHZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

.field public static final enum ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

.field public static final enum eARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final comment:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    const-string v1, "eARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_UNKNOWN_ENUM_VALUE"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->eARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    .line 43
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    const-string v1, "ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_2_4GHZ"

    const-string v2, "2.4 GHz band"

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_2_4GHZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    .line 45
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    const-string v1, "ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_5GHZ"

    const-string v2, "5 GHz band"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_5GHZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    .line 46
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    const-string v1, "ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_MAX"

    invoke-direct {v0, v1, v7, v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->eARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_2_4GHZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_5GHZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    aput-object v1, v0, v7

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->value:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->comment:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->value:I

    .line 60
    iput-object p4, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->comment:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 77
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 78
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    move-result-object v2

    .line 79
    .local v2, "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->valuesList:Ljava/util/HashMap;

    .line 80
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 81
    .local v0, "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    .line 85
    .local v1, "retVal":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    if-nez v1, :cond_1

    .line 86
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->eARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    .line 88
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_POWERUP_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->comment:Ljava/lang/String;

    .line 98
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
