.class public interface abstract annotation Lcom/android/billingclient/api/BillingClient$UnderAgeOfConsent;
.super Ljava/lang/Object;
.source "BillingClient.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "UnderAgeOfConsent"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final NOT_UNDER_AGE_OF_CONSENT:I = 0x2

.field public static final UNDER_AGE_OF_CONSENT:I = 0x1

.field public static final UNSPECIFIED:I
