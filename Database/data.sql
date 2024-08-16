USE [master]
GO
/****** Object:  Database [HocPhi]    Script Date: 9/3/2020 8:39:46 PM ******/
CREATE DATABASE [HocPhi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HocPhi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\HocPhi.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HocPhi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\HocPhi_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HocPhi] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HocPhi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HocPhi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HocPhi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HocPhi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HocPhi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HocPhi] SET ARITHABORT OFF 
GO
ALTER DATABASE [HocPhi] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HocPhi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HocPhi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HocPhi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HocPhi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HocPhi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HocPhi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HocPhi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HocPhi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HocPhi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HocPhi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HocPhi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HocPhi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HocPhi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HocPhi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HocPhi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HocPhi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HocPhi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HocPhi] SET  MULTI_USER 
GO
ALTER DATABASE [HocPhi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HocPhi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HocPhi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HocPhi] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HocPhi] SET DELAYED_DURABILITY = DISABLED 
GO
USE [HocPhi]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[Quyen] [int] NULL,
	[MaGiaoVien] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BienLai](
	[MaBienLai] [int] IDENTITY(1,1) NOT NULL,
	[MaHocSinh] [nvarchar](50) NULL,
	[NgayNop] [date] NULL,
	[NguoiNop] [nvarchar](50) NULL,
	[TienAn1ngay] [float] NULL,
	[TienAn1thang] [float] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_BienLai] PRIMARY KEY CLUSTERED 
(
	[MaBienLai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemDanh](
	[NgayDiemDanh] [date] NOT NULL,
	[HocSinh] [nvarchar](50) NOT NULL,
	[TrangThaiDiemDanh] [bit] NULL,
 CONSTRAINT [PK_DiemDanh] PRIMARY KEY CLUSTERED 
(
	[NgayDiemDanh] ASC,
	[HocSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGiaoVien] [nvarchar](50) NOT NULL,
	[TenGiaoVien] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](50) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGiaoVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeHoc](
	[MaHeHoc] [nvarchar](50) NOT NULL,
	[TenHeHoc] [nvarchar](50) NULL,
	[HocPhi] [float] NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_HeHoc] PRIMARY KEY CLUSTERED 
(
	[MaHeHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh](
	[MaHocSinh] [nvarchar](50) NOT NULL,
	[TenHocSinh] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[NamSinh] [date] NULL,
	[MaLop] [nvarchar](50) NULL,
	[MaHeHoc] [nvarchar](50) NULL,
	[TenPhuHuynh] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](10) NULL,
	[DiaChiLienHe] [nvarchar](50) NULL,
	[NgayDangKy] [date] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_HocSinh] PRIMARY KEY CLUSTERED 
(
	[MaHocSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [nvarchar](50) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
	[MaHeHoc] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[MaGiaoVien] [nvarchar](50) NULL,
	[NgayBatDau] [date] NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Admin_GiaoVien] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GiaoVien] ([MaGiaoVien])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Admin_GiaoVien]
GO
ALTER TABLE [dbo].[BienLai]  WITH CHECK ADD  CONSTRAINT [FK_BienLai_HocSinh] FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HocSinh] ([MaHocSinh])
GO
ALTER TABLE [dbo].[BienLai] CHECK CONSTRAINT [FK_BienLai_HocSinh]
GO
ALTER TABLE [dbo].[DiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_DiemDanh_HocSinh] FOREIGN KEY([HocSinh])
REFERENCES [dbo].[HocSinh] ([MaHocSinh])
GO
ALTER TABLE [dbo].[DiemDanh] CHECK CONSTRAINT [FK_DiemDanh_HocSinh]
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_HeHoc] FOREIGN KEY([MaHeHoc])
REFERENCES [dbo].[HeHoc] ([MaHeHoc])
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK_HocSinh_HeHoc]
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK_HocSinh_Lop]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_GiaoVien] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GiaoVien] ([MaGiaoVien])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_GiaoVien]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_HeHoc] FOREIGN KEY([MaHeHoc])
REFERENCES [dbo].[HeHoc] ([MaHeHoc])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_HeHoc]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_CapNhatTrangThaiDiemDanh](@MaHs NVARCHAR(50), @TrangThaiDiemDanh BIT)
AS
	BEGIN
		BEGIN TRY
			UPDATE dbo.DiemDanh
			SET TrangThaiDiemDanh = @TrangThaiDiemDanh
			WHERE HocSinh = @MaHs
        END TRY

		BEGIN CATCH
			SELECT  
            ERROR_NUMBER() AS ErrorNumber  
            ,ERROR_SEVERITY() AS ErrorSeverity  
            ,ERROR_STATE() AS ErrorState  
            ,ERROR_PROCEDURE() AS ErrorProcedure  
            ,ERROR_LINE() AS ErrorLine  
            ,ERROR_MESSAGE() AS ErrorMessage; 
		END CATCH
	END
    
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DiemDanhHS](@MahocSinh NVARCHAR(50), @TrangThai BIT)
AS
	BEGIN
	 BEGIN TRY
		INSERT INTO dbo.DiemDanh
		        ( NgayDiemDanh ,
		          HocSinh ,
		          TrangThaiDiemDanh
		        )
		VALUES  ( CONVERT(char(10), GetDate(),126) , -- NgayDangKy - date
		          @MahocSinh , -- HocSinh - nvarchar(50)
		          @TrangThai  -- TrangThaiDiemDanh - bit
		        )
	END TRY
	BEGIN CATCH
		SELECT ERROR_NUMBER() AS ErrorNumber  
            ,ERROR_SEVERITY() AS ErrorSeverity  
            ,ERROR_STATE() AS ErrorState  
            ,ERROR_PROCEDURE() AS ErrorProcedure  
            ,ERROR_LINE() AS ErrorLine  
            ,ERROR_MESSAGE() AS ErrorMessage; 
	END CATCH

	END;
   
GO
USE [master]
GO
ALTER DATABASE [HocPhi] SET  READ_WRITE 
GO
