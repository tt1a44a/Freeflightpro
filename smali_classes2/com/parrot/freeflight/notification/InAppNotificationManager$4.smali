.class Lcom/parrot/freeflight/notification/InAppNotificationManager$4;
.super Ljava/lang/Object;
.source "InAppNotificationManager.java"

# interfaces
.implements Ljonathanfinerty/once/CountChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/notification/InAppNotificationManager;->updateNotificationList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/notification/InAppNotificationManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/notification/InAppNotificationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/notification/InAppNotificationManager;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/parrot/freeflight/notification/InAppNotificationManager$4;->this$0:Lcom/parrot/freeflight/notification/InAppNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(I)Z
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 160
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
