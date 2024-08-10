.class public interface abstract Lcom/parrot/freeflight/view/NotificationBar$NotificationBarListener;
.super Ljava/lang/Object;
.source "NotificationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/view/NotificationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationBarListener"
.end annotation


# virtual methods
.method public abstract onClick(Lcom/parrot/freeflight/notification/InAppNotification;)V
.end method

.method public abstract onDismissClicked(Lcom/parrot/freeflight/notification/InAppNotification;)V
.end method
