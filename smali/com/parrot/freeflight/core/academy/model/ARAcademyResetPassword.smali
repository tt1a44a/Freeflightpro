.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyResetPassword;
.super Ljava/lang/Object;
.source "ARAcademyResetPassword.java"


# static fields
.field private static final ARACADEMY_RESETPASSWORD_EMAIL:Ljava/lang/String; = "email"

.field private static final ARACADEMY_RESETPASSWORD_ERRORS:Ljava/lang/String; = "errors"

.field private static final ARACADEMY_RESETPASSWORD_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_RESETPASSWORD_TAG:Ljava/lang/String; = "ARAcademyResetPassword"


# instance fields
.field protected resetPasswordEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field protected resetPasswordErrors:Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errors"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyResetPassword;->resetPasswordEmail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyResetPassword;->resetPasswordEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getErrors()Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyResetPassword;->resetPasswordErrors:Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyResetPassword;->resetPasswordEmail:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setErrors(Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;)V
    .locals 0
    .param p1, "errors"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyResetPassword;->resetPasswordErrors:Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;

    .line 38
    return-void
.end method
