.class public interface abstract Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;
.super Ljava/lang/Object;
.source "RegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/registration/RegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RegistrationListener"
.end annotation


# virtual methods
.method public abstract onPromotionStartEnded(I)V
.end method

.method public abstract onPurchaseInformationChanged()V
.end method

.method public abstract onRegistrationInformationChanged()V
.end method

.method public abstract onTrialStartEnded(I)V
.end method
