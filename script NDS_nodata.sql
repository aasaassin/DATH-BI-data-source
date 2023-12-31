SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NguonDuLieu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NguonDuLieu](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[TenNguonDuLieu] [varchar](50) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_NguonDuLieu] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrangThai]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TrangThai](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[TenTrangThai] [varchar](50) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_TrangThai] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HoaDon]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HoaDon](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [varchar](50) NOT NULL,
	[MaKH] [int] NULL,
	[MaCH] [int] NULL,
	[NguonDuLieu] [int] NULL,
	[TrangThai] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_HoaDon_1] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CuaHang]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CuaHang](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[MaCH] [varchar](4) NOT NULL,
	[TenCH] [varchar](50) NULL,
	[LoaiCH] [int] NULL,
	[Nuoc] [int] NULL,
	[NguonDuLieu] [int] NULL,
	[TrangThai] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_CuaHang_Jupiter] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanPham]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SanPham](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [varchar](4) NOT NULL,
	[TenSP] [varchar](50) NULL,
	[GiaSP] [int] NULL,
	[LoaiSP] [int] NULL,
	[NguonDuLieu] [int] NULL,
	[TrangThai] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChiTietHoaDon]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ChiTietHoaDon](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[MaChiTiet] [int] NULL,
	[MaHD] [int] NULL,
	[MaSP] [int] NULL,
	[NguonDuLieu] [int] NULL,
	[TrangThai] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_ChiTietHoaDon_1] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiSanPham]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoaiSanPham](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiSP] [varchar](4) NOT NULL,
	[TenLoaiSP] [varchar](50) NULL,
	[NguonDuLieu] [int] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Nuoc]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Nuoc](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[MaNuoc] [varchar](50) NOT NULL,
	[TenNuoc] [varchar](50) NULL,
	[NguonDuLieu] [int] NULL,
	[TrangThai] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_Nuoc_Jupiter] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KhachHang]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KhachHang](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [varchar](4) NOT NULL,
	[TenKH] [varchar](50) NULL,
	[TenNuoc] [varchar](50) NOT NULL,
	[NguonDuLieu] [int] NULL,
	[TrangThai] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_KhachHang_1] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiCuaHang]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoaiCuaHang](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiCH] [varchar](4) NOT NULL,
	[TenLoaiCH] [varchar](50) NULL,
	[NguonDuLieu] [int] NULL,
	[TrangThai] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_LoaiCuaHang] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HoaDon_CuaHang]') AND parent_object_id = OBJECT_ID(N'[dbo].[HoaDon]'))
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_CuaHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[CuaHang] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HoaDon_KhachHang]') AND parent_object_id = OBJECT_ID(N'[dbo].[HoaDon]'))
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HoaDon_NguonDuLieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[HoaDon]'))
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NguonDuLieu] FOREIGN KEY([NguonDuLieu])
REFERENCES [dbo].[NguonDuLieu] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HoaDon_TrangThai]') AND parent_object_id = OBJECT_ID(N'[dbo].[HoaDon]'))
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_TrangThai] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThai] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CuaHang_LoaiCuaHang]') AND parent_object_id = OBJECT_ID(N'[dbo].[CuaHang]'))
ALTER TABLE [dbo].[CuaHang]  WITH CHECK ADD  CONSTRAINT [FK_CuaHang_LoaiCuaHang] FOREIGN KEY([LoaiCH])
REFERENCES [dbo].[LoaiCuaHang] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CuaHang_NguonDuLieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[CuaHang]'))
ALTER TABLE [dbo].[CuaHang]  WITH CHECK ADD  CONSTRAINT [FK_CuaHang_NguonDuLieu] FOREIGN KEY([NguonDuLieu])
REFERENCES [dbo].[NguonDuLieu] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CuaHang_Nuoc]') AND parent_object_id = OBJECT_ID(N'[dbo].[CuaHang]'))
ALTER TABLE [dbo].[CuaHang]  WITH CHECK ADD  CONSTRAINT [FK_CuaHang_Nuoc] FOREIGN KEY([Nuoc])
REFERENCES [dbo].[Nuoc] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CuaHang_TrangThai]') AND parent_object_id = OBJECT_ID(N'[dbo].[CuaHang]'))
ALTER TABLE [dbo].[CuaHang]  WITH CHECK ADD  CONSTRAINT [FK_CuaHang_TrangThai] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThai] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SanPham_LoaiSanPham]') AND parent_object_id = OBJECT_ID(N'[dbo].[SanPham]'))
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([LoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SanPham_NguonDuLieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[SanPham]'))
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NguonDuLieu] FOREIGN KEY([NguonDuLieu])
REFERENCES [dbo].[NguonDuLieu] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SanPham_TrangThai]') AND parent_object_id = OBJECT_ID(N'[dbo].[SanPham]'))
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_TrangThai] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThai] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChiTietHoaDon_HoaDon]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChiTietHoaDon]'))
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChiTietHoaDon_NguonDuLieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChiTietHoaDon]'))
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_NguonDuLieu] FOREIGN KEY([NguonDuLieu])
REFERENCES [dbo].[NguonDuLieu] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChiTietHoaDon_SanPham]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChiTietHoaDon]'))
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChiTietHoaDon_TrangThai]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChiTietHoaDon]'))
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_TrangThai] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThai] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoaiSanPham_NguonDuLieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoaiSanPham]'))
ALTER TABLE [dbo].[LoaiSanPham]  WITH CHECK ADD  CONSTRAINT [FK_LoaiSanPham_NguonDuLieu] FOREIGN KEY([NguonDuLieu])
REFERENCES [dbo].[NguonDuLieu] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoaiSanPham_TrangThai]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoaiSanPham]'))
ALTER TABLE [dbo].[LoaiSanPham]  WITH CHECK ADD  CONSTRAINT [FK_LoaiSanPham_TrangThai] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThai] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nuoc_NguonDuLieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nuoc]'))
ALTER TABLE [dbo].[Nuoc]  WITH CHECK ADD  CONSTRAINT [FK_Nuoc_NguonDuLieu] FOREIGN KEY([NguonDuLieu])
REFERENCES [dbo].[NguonDuLieu] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nuoc_TrangThai]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nuoc]'))
ALTER TABLE [dbo].[Nuoc]  WITH CHECK ADD  CONSTRAINT [FK_Nuoc_TrangThai] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThai] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KhachHang_NguonDuLieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[KhachHang]'))
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_NguonDuLieu] FOREIGN KEY([NguonDuLieu])
REFERENCES [dbo].[NguonDuLieu] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KhachHang_TrangThai]') AND parent_object_id = OBJECT_ID(N'[dbo].[KhachHang]'))
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_TrangThai] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThai] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoaiCuaHang_NguonDuLieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoaiCuaHang]'))
ALTER TABLE [dbo].[LoaiCuaHang]  WITH CHECK ADD  CONSTRAINT [FK_LoaiCuaHang_NguonDuLieu] FOREIGN KEY([NguonDuLieu])
REFERENCES [dbo].[NguonDuLieu] ([Ma])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoaiCuaHang_TrangThai]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoaiCuaHang]'))
ALTER TABLE [dbo].[LoaiCuaHang]  WITH CHECK ADD  CONSTRAINT [FK_LoaiCuaHang_TrangThai] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThai] ([Ma])
