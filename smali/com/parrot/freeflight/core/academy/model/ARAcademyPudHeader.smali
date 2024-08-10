.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader;
.super Ljava/lang/Object;
.source "ARAcademyPudHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/academy/model/ARAcademyPudHeader$HeaderType;
    }
.end annotation


# static fields
.field private static final ARACADEMY_PUDHEADER_NAME:Ljava/lang/String; = "name"

.field private static final ARACADEMY_PUDHEADER_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_PUDHEADER_SIZE:Ljava/lang/String; = "size"

.field private static final ARACADEMY_PUDHEADER_TAG:Ljava/lang/String; = "ARAcademyPud"

.field private static final ARACADEMY_PUDHEADER_TYPE:Ljava/lang/String; = "type"


# instance fields
.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public size:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
