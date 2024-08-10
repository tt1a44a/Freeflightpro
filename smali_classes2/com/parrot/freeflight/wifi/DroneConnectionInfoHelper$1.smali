.class final Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper$1;
.super Ljava/lang/Object;
.source "DroneConnectionInfoHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper;->sortList(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$currentWifiSsid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper$1;->val$currentWifiSsid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)I
    .locals 3
    .param p1, "lhs"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    .param p2, "rhs"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper$1;->val$currentWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper$1;->val$currentWifiSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper$1;->val$currentWifiSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getRssi()I

    move-result v1

    invoke-virtual {p2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getRssi()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v0, v1

    .line 63
    .local v0, "val":I
    :goto_0
    return v0

    .line 44
    .end local v0    # "val":I
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper$1;->val$currentWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper$1;->val$currentWifiSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    const/4 v0, -0x1

    .restart local v0    # "val":I
    goto :goto_0

    .line 46
    .end local v0    # "val":I
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper$1;->val$currentWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper$1;->val$currentWifiSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    const/4 v0, 0x1

    .restart local v0    # "val":I
    goto :goto_0

    .line 48
    .end local v0    # "val":I
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper;->access$000(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper;->access$000(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getRssi()I

    move-result v1

    invoke-virtual {p2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getRssi()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v0, v1

    .restart local v0    # "val":I
    goto :goto_0

    .line 50
    .end local v0    # "val":I
    :cond_3
    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper;->access$000(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 51
    const/4 v0, -0x1

    .restart local v0    # "val":I
    goto :goto_0

    .line 52
    .end local v0    # "val":I
    :cond_4
    invoke-virtual {p2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper;->access$000(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 53
    const/4 v0, 0x1

    .restart local v0    # "val":I
    goto :goto_0

    .line 54
    .end local v0    # "val":I
    :cond_5
    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 55
    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getRssi()I

    move-result v1

    invoke-virtual {p2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getRssi()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v0, v1

    .restart local v0    # "val":I
    goto :goto_0

    .line 56
    .end local v0    # "val":I
    :cond_6
    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 57
    const/4 v0, -0x1

    .restart local v0    # "val":I
    goto :goto_0

    .line 58
    .end local v0    # "val":I
    :cond_7
    invoke-virtual {p2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 59
    const/4 v0, 0x1

    .restart local v0    # "val":I
    goto/16 :goto_0

    .line 61
    .end local v0    # "val":I
    :cond_8
    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getRssi()I

    move-result v1

    invoke-virtual {p2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getRssi()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v0, v1

    .restart local v0    # "val":I
    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    check-cast p2, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper$1;->compare(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)I

    move-result v0

    return v0
.end method
