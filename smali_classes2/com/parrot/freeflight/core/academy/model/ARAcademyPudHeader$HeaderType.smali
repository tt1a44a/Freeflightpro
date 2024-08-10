.class public final enum Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;
.super Ljava/lang/Enum;
.source "ARAcademyPudHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

.field public static final enum TYPE_BOOLEAN:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

.field public static final enum TYPE_DOUBLE:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

.field public static final enum TYPE_FLOAT:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

.field public static final enum TYPE_INTEGER:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

.field public static final enum TYPE_STRING:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 24
    new-instance v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    const-string v3, "TYPE_STRING"

    const-string v4, "string"

    invoke-direct {v2, v3, v1, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->TYPE_STRING:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    .line 25
    new-instance v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    const-string v3, "TYPE_INTEGER"

    const-string v4, "integer"

    invoke-direct {v2, v3, v5, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->TYPE_INTEGER:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    .line 26
    new-instance v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    const-string v3, "TYPE_BOOLEAN"

    const-string v4, "boolean"

    invoke-direct {v2, v3, v6, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->TYPE_BOOLEAN:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    .line 27
    new-instance v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    const-string v3, "TYPE_FLOAT"

    const-string v4, "float"

    invoke-direct {v2, v3, v7, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->TYPE_FLOAT:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    .line 28
    new-instance v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    const-string v3, "TYPE_DOUBLE"

    const-string v4, "double"

    invoke-direct {v2, v3, v8, v4}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->TYPE_DOUBLE:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    .line 23
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    sget-object v3, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->TYPE_STRING:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    aput-object v3, v2, v1

    sget-object v3, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->TYPE_INTEGER:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->TYPE_BOOLEAN:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->TYPE_FLOAT:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->TYPE_DOUBLE:Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    aput-object v3, v2, v8

    sput-object v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->$VALUES:[Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    .line 41
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->lookup:Ljava/util/Map;

    .line 44
    invoke-static {}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->values()[Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    move-result-object v2

    array-length v3, v2

    .local v0, "d":Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 45
    sget-object v4, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->value:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static getFromValue(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->$VALUES:[Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;->value:Ljava/lang/String;

    return-object v0
.end method
