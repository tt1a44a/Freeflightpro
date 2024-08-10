.class public interface abstract Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;
.super Ljava/lang/Object;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProfileView"
.end annotation


# virtual methods
.method public abstract updateAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V
    .param p1    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract updateUserInfo(Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)V
    .param p1    # Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
