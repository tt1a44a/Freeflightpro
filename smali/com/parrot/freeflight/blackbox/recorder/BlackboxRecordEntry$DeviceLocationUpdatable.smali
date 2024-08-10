.class public interface abstract Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$DeviceLocationUpdatable;
.super Ljava/lang/Object;
.source "BlackboxRecordEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceLocationUpdatable"
.end annotation


# virtual methods
.method public abstract updateDeviceLocation(DLandroid/location/Location;)V
    .param p3    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
