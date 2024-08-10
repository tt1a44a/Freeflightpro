.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyOffset;
.super Ljava/lang/Object;
.source "ARAcademyOffset.java"


# static fields
.field private static final ARACADEMY_OFFSET_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_OFFSET_OFFSET:Ljava/lang/String; = "offset"

.field private static final ARACADEMY_OFFSET_TAG:Ljava/lang/String; = "ARAcademyOffset"


# instance fields
.field protected offsetOffset:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offset"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyOffset;->offsetOffset:Ljava/lang/String;

    return-object v0
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyOffset;->offsetOffset:Ljava/lang/String;

    .line 22
    return-void
.end method
